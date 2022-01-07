; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_parse_reg_reservation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_parse_reg_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_reservation = type { i32, i32 }

@BWRITERSPR_CONST = common dso_local global i32 0, align 4
@BWRITERSPR_CONSTINT = common dso_local global i32 0, align 4
@BWRITERSPR_CONSTBOOL = common dso_local global i32 0, align 4
@BWRITERSPR_SAMPLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported register type.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Unsupported register reservation syntax.\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reg_reservation* (i8*)* @parse_reg_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reg_reservation* @parse_reg_reservation(i8* %0) #0 {
  %2 = alloca %struct.reg_reservation*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.reg_reservation*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %19 [
    i32 99, label %11
    i32 105, label %13
    i32 98, label %15
    i32 115, label %17
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @BWRITERSPR_CONST, align 4
  store i32 %12, i32* %5, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @BWRITERSPR_CONSTINT, align 4
  store i32 %14, i32* %5, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @BWRITERSPR_CONSTBOOL, align 4
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @BWRITERSPR_SAMPLER, align 4
  store i32 %18, i32* %5, align 4
  br label %21

19:                                               ; preds = %1
  %20 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.reg_reservation* null, %struct.reg_reservation** %2, align 8
  br label %42

21:                                               ; preds = %17, %15, %13, %11
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call i32 @FIXME(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store %struct.reg_reservation* null, %struct.reg_reservation** %2, align 8
  br label %42

28:                                               ; preds = %21
  %29 = call %struct.reg_reservation* @d3dcompiler_alloc(i32 8)
  store %struct.reg_reservation* %29, %struct.reg_reservation** %4, align 8
  %30 = load %struct.reg_reservation*, %struct.reg_reservation** %4, align 8
  %31 = icmp ne %struct.reg_reservation* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store %struct.reg_reservation* null, %struct.reg_reservation** %2, align 8
  br label %42

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.reg_reservation*, %struct.reg_reservation** %4, align 8
  %37 = getelementptr inbounds %struct.reg_reservation, %struct.reg_reservation* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.reg_reservation*, %struct.reg_reservation** %4, align 8
  %40 = getelementptr inbounds %struct.reg_reservation, %struct.reg_reservation* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.reg_reservation*, %struct.reg_reservation** %4, align 8
  store %struct.reg_reservation* %41, %struct.reg_reservation** %2, align 8
  br label %42

42:                                               ; preds = %34, %32, %26, %19
  %43 = load %struct.reg_reservation*, %struct.reg_reservation** %2, align 8
  ret %struct.reg_reservation* %43
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local %struct.reg_reservation* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
