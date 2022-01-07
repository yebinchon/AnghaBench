; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_stop_server.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_stop_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPC_S_OK = common dso_local global i64 0, align 8
@drsuapi_v4_0_s_ifspec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i32] [i32 32, i32 62, i32 32, i32 82, i32 80, i32 67, i32 32, i32 98, i32 105, i32 110, i32 100, i32 32, i32 117, i32 110, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 101, i32 114, i32 101, i32 100, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i32] [i32 82, i32 112, i32 99, i32 69, i32 112, i32 85, i32 110, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 101, i32 114, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [28 x i32] [i32 82, i32 112, i32 99, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 73, i32 110, i32 113, i32 66, i32 105, i32 110, i32 100, i32 105, i32 110, i32 103, i32 115, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [29 x i32] [i32 82, i32 112, i32 99, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 85, i32 110, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 101, i32 114, i32 73, i32 102, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [34 x i32] [i32 82, i32 112, i32 99, i32 77, i32 103, i32 109, i32 116, i32 83, i32 116, i32 111, i32 112, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 76, i32 105, i32 115, i32 116, i32 101, i32 110, i32 105, i32 110, i32 103, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [24 x i32] [i32 32, i32 62, i32 32, i32 115, i32 116, i32 111, i32 112, i32 112, i32 105, i32 110, i32 103, i32 32, i32 82, i32 80, i32 67, i32 32, i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [23 x i32] [i32 32, i32 62, i32 32, i32 82, i32 80, i32 67, i32 32, i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 115, i32 116, i32 111, i32 112, i32 112, i32 101, i32 100, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_rpc_drsr_stop_server() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  %3 = call i64 @RpcServerInqBindings(i32** %2)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @RPC_S_OK, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %0
  %8 = load i32, i32* @drsuapi_v4_0_s_ifspec, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @RpcEpUnregister(i32 %8, i32* %9, i32* null)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @RPC_S_OK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = call i32 @kprintf(i8* bitcast ([26 x i32]* @.str to i8*))
  br label %19

16:                                               ; preds = %7
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @PRINT_ERROR(i8* bitcast ([23 x i32]* @.str.1 to i8*), i64 %17)
  br label %19

19:                                               ; preds = %16, %14
  %20 = call i32 @RpcBindingVectorFree(i32** %2)
  br label %24

21:                                               ; preds = %0
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @PRINT_ERROR(i8* bitcast ([28 x i32]* @.str.2 to i8*), i64 %22)
  br label %24

24:                                               ; preds = %21, %19
  %25 = load i32, i32* @drsuapi_v4_0_s_ifspec, align 4
  %26 = call i64 @RpcServerUnregisterIfEx(i32 %25, i32* null, i32 1)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @RPC_S_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @PRINT_ERROR(i8* bitcast ([29 x i32]* @.str.3 to i8*), i64 %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = call i64 @RpcMgmtStopServerListening(i32* null)
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = load i64, i64* @RPC_S_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i64, i64* %1, align 8
  %40 = call i32 @PRINT_ERROR(i8* bitcast ([34 x i32]* @.str.4 to i8*), i64 %39)
  br label %45

41:                                               ; preds = %33
  %42 = call i32 @kprintf(i8* bitcast ([24 x i32]* @.str.5 to i8*))
  %43 = call i32 (...) @RpcMgmtWaitServerListen()
  %44 = call i32 @kprintf(i8* bitcast ([23 x i32]* @.str.6 to i8*))
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i64, i64* %1, align 8
  ret i64 %46
}

declare dso_local i64 @RpcServerInqBindings(i32**) #1

declare dso_local i64 @RpcEpUnregister(i32, i32*, i32*) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64) #1

declare dso_local i32 @RpcBindingVectorFree(i32**) #1

declare dso_local i64 @RpcServerUnregisterIfEx(i32, i32*, i32) #1

declare dso_local i64 @RpcMgmtStopServerListening(i32*) #1

declare dso_local i32 @RpcMgmtWaitServerListen(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
