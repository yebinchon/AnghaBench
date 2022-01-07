; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_acr.c_kuhl_m_acr_open.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_acr.c_kuhl_m_acr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i32] [i32 116, i32 114, i32 97, i32 99, i32 101, i32 0], align 4
@kuhl_m_acr_hContext = common dso_local global i32 0, align 4
@SCARD_SCOPE_SYSTEM = common dso_local global i32 0, align 4
@SCARD_S_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i32] [i32 79, i32 112, i32 101, i32 110, i32 105, i32 110, i32 103, i32 32, i32 65, i32 67, i32 82, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [13 x i32] [i32 65, i32 67, i32 83, i32 32, i32 65, i32 67, i32 82, i32 49, i32 50, i32 50, i32 32, i32 48, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@kuhl_m_acr_Comm = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i32] [i32 79, i32 75, i32 33, i32 10, i32 79, i32 112, i32 101, i32 110, i32 105, i32 110, i32 103, i32 32, i32 80, i32 78, i32 53, i32 51, i32 50, i32 58, i32 32, i32 0], align 4
@kull_m_arcr_SendRecvDirect = common dso_local global i32 0, align 4
@kuhl_m_acr_pn532Comm = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i32] [i32 79, i32 75, i32 33, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [32 x i32] [i32 65, i32 108, i32 114, i32 101, i32 97, i32 100, i32 121, i32 32, i32 111, i32 112, i32 101, i32 110, i32 101, i32 100, i32 44, i32 32, i32 99, i32 108, i32 111, i32 115, i32 101, i32 32, i32 105, i32 116, i32 32, i32 102, i32 105, i32 114, i32 115, i32 116, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_acr_open(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32**, i32*** %4, align 8
  %9 = call i32 @kull_m_string_args_byName(i32 %7, i32** %8, i8* bitcast ([6 x i32]* @.str to i8*), i32* null, i32* null)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @kuhl_m_acr_hContext, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @SCARD_SCOPE_SYSTEM, align 4
  %14 = call i64 @SCardEstablishContext(i32 %13, i32* null, i32* null, i32* @kuhl_m_acr_hContext)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = call i32 @kprintf(i8* bitcast ([16 x i32]* @.str.1 to i8*))
  %20 = load i32, i32* @kuhl_m_acr_hContext, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @kull_m_acr_init(i32 %20, i8* bitcast ([13 x i32]* @.str.2 to i8*), i32 %21, i32* null, i32 %22, i32* @kuhl_m_acr_Comm)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = call i32 @kprintf(i8* bitcast ([20 x i32]* @.str.3 to i8*))
  %27 = load i32, i32* @kull_m_arcr_SendRecvDirect, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @kull_m_pn532_init(i32 %27, i32* @kuhl_m_acr_Comm, i32 %28, i32* @kuhl_m_acr_pn532Comm)
  %30 = call i32 @kprintf(i8* bitcast ([5 x i32]* @.str.4 to i8*))
  br label %33

31:                                               ; preds = %18
  %32 = call i32 @kuhl_m_acr_close(i32 0, i32* null)
  br label %33

33:                                               ; preds = %31, %25
  br label %34

34:                                               ; preds = %33, %12
  br label %37

35:                                               ; preds = %2
  %36 = call i32 @PRINT_ERROR(i8* bitcast ([32 x i32]* @.str.5 to i8*))
  br label %37

37:                                               ; preds = %35, %34
  %38 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %38
}

declare dso_local i32 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #1

declare dso_local i64 @SCardEstablishContext(i32, i32*, i32*, i32*) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i64 @kull_m_acr_init(i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @kull_m_pn532_init(i32, i32*, i32, i32*) #1

declare dso_local i32 @kuhl_m_acr_close(i32, i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
