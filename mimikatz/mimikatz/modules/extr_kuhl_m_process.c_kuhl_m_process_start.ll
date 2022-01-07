; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_process.c_kuhl_m_process_start.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_process.c_kuhl_m_process_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [24 x i32] [i32 84, i32 114, i32 121, i32 105, i32 110, i32 103, i32 32, i32 116, i32 111, i32 32, i32 115, i32 116, i32 97, i32 114, i32 116, i32 32, i32 34, i32 37, i32 115, i32 34, i32 32, i32 58, i32 32, i32 0], align 4
@KULL_M_PROCESS_CREATE_NORMAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i32] [i32 79, i32 75, i32 32, i32 33, i32 32, i32 40, i32 80, i32 73, i32 68, i32 32, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [22 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 95, i32 99, i32 114, i32 101, i32 97, i32 116, i32 101, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_process_start(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load i32**, i32*** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %10, i64 %13
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @kprintf(i8* bitcast ([24 x i32]* @.str to i8*), i32* %16)
  %18 = load i32, i32* @KULL_M_PROCESS_CREATE_NORMAL, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i64 @kull_m_process_create(i32 %18, i32* %19, i32 0, i32* null, i32 0, i32* null, i32* null, i32* null, %struct.TYPE_3__* %6, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kprintf(i8* bitcast ([15 x i32]* @.str.1 to i8*), i32* %25)
  br label %29

27:                                               ; preds = %9
  %28 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([22 x i32]* @.str.2 to i8*))
  br label %29

29:                                               ; preds = %27, %23
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %31
}

declare dso_local i32 @kprintf(i8*, i32*) #1

declare dso_local i64 @kull_m_process_create(i32, i32*, i32, i32*, i32, i32*, i32*, i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
