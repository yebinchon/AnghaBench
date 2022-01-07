; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_bkrp.c_kull_m_rpc_bkrp_createBinding.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_bkrp.c_kull_m_rpc_bkrp_createBinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@DS_WRITABLE_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i32] [i32 110, i32 99, i32 97, i32 99, i32 110, i32 95, i32 110, i32 112, i32 0], align 4
@.str.1 = private unnamed_addr constant [24 x i32] [i32 92, i32 112, i32 105, i32 112, i32 101, i32 92, i32 112, i32 114, i32 111, i32 116, i32 101, i32 99, i32 116, i32 101, i32 100, i32 95, i32 115, i32 116, i32 111, i32 114, i32 97, i32 103, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [17 x i32] [i32 80, i32 114, i32 111, i32 116, i32 101, i32 99, i32 116, i32 101, i32 100, i32 83, i32 116, i32 111, i32 114, i32 97, i32 103, i32 101, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@MIMIKATZ_NT_MAJOR_VERSION = common dso_local global i32 0, align 4
@RPC_C_AUTHN_GSS_KERBEROS = common dso_local global i32 0, align 4
@RPC_C_AUTHN_GSS_NEGOTIATE = common dso_local global i32 0, align 4
@RPC_C_IMP_LEVEL_IMPERSONATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_rpc_bkrp_createBinding(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @DS_WRITABLE_REQUIRED, align 4
  %12 = call i64 @kull_m_net_getDC(i32* null, i32 %11, i32** %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %3, align 8
  br label %16

16:                                               ; preds = %14, %10
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32, i32* @MIMIKATZ_NT_MAJOR_VERSION, align 4
  %24 = icmp slt i32 %23, 6
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @RPC_C_AUTHN_GSS_KERBEROS, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @RPC_C_AUTHN_GSS_NEGOTIATE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load i32, i32* @RPC_C_IMP_LEVEL_IMPERSONATE, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @kull_m_rpc_createBinding(i32* null, i8* bitcast ([9 x i32]* @.str to i8*), i32* %21, i8* bitcast ([24 x i32]* @.str.1 to i8*), i8* bitcast ([17 x i32]* @.str.2 to i8*), i32 %22, i32 %30, i32* null, i32 %31, i32* %32, i32* null)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %17
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @LocalFree(i32* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @kull_m_net_getDC(i32*, i32, i32**) #1

declare dso_local i32 @kull_m_rpc_createBinding(i32*, i8*, i32*, i8*, i8*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
