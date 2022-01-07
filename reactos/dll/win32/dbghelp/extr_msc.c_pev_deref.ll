; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pev_deref.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pev_deref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevaluator = type { i32 }

@PEV_MAX_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"deref: cannot read mem at %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevaluator*)* @pev_deref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pev_deref(%struct.pevaluator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pevaluator*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pevaluator* %0, %struct.pevaluator** %3, align 8
  %9 = load i32, i32* @PEV_MAX_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.pevaluator*, %struct.pevaluator** %3, align 8
  %14 = call i32 @pev_pop_val(%struct.pevaluator* %13, i32* %6)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.pevaluator*, %struct.pevaluator** %3, align 8
  %20 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @sw_read_mem(i32 %21, i32 %22, i32* %7, i32 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load %struct.pevaluator*, %struct.pevaluator** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @PEV_ERROR1(%struct.pevaluator* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %36

29:                                               ; preds = %18
  %30 = trunc i64 %10 to i32
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @snprintf(i8* %12, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.pevaluator*, %struct.pevaluator** %3, align 8
  %34 = call i32 @pev_push(%struct.pevaluator* %33, i8* %12)
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %29, %25, %16
  %37 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pev_pop_val(%struct.pevaluator*, i32*) #2

declare dso_local i32 @sw_read_mem(i32, i32, i32*, i32) #2

declare dso_local i32 @PEV_ERROR1(%struct.pevaluator*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @pev_push(%struct.pevaluator*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
