; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_bind_DRSR.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_bind_DRSR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 110, i32 99, i32 97, i32 99, i32 110, i32 95, i32 105, i32 112, i32 95, i32 116, i32 99, i32 112, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 108, i32 100, i32 97, i32 112, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@MIMIKATZ_NT_MAJOR_VERSION = common dso_local global i32 0, align 4
@RPC_C_AUTHN_GSS_KERBEROS = common dso_local global i32 0, align 4
@RPC_C_AUTHN_GSS_NEGOTIATE = common dso_local global i32 0, align 4
@RPC_C_IMP_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@kull_m_rpc_drsr_RpcSecurityCallback = common dso_local global i32 0, align 4
@DRS_EXT_GETCHGREPLY_V6 = common dso_local global i32 0, align 4
@DRS_EXT_STRONG_ENCRYPTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i32] [i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 32, i32 110, i32 111, i32 116, i32 32, i32 112, i32 114, i32 101, i32 115, i32 101, i32 110, i32 116, i32 44, i32 32, i32 111, i32 114, i32 32, i32 100, i32 111, i32 101, i32 115, i32 110, i32 39, i32 116, i32 32, i32 108, i32 111, i32 111, i32 107, i32 32, i32 108, i32 105, i32 107, i32 101, i32 32, i32 97, i32 32, i32 70, i32 81, i32 68, i32 78, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_bind_DRSR(%struct.TYPE_10__* %0, i32 (%struct.TYPE_10__*, i32*)* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32 (%struct.TYPE_10__*, i32*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 (%struct.TYPE_10__*, i32*)* %1, i32 (%struct.TYPE_10__*, i32*)** %4, align 8
  %9 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %9, i32* %5, align 4
  store i32* null, i32** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TRUE, align 4
  %14 = load i32, i32* @MIMIKATZ_NT_MAJOR_VERSION, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @RPC_C_AUTHN_GSS_KERBEROS, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @RPC_C_AUTHN_GSS_NEGOTIATE, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load i32, i32* @RPC_C_IMP_LEVEL_DEFAULT, align 4
  %23 = load i32, i32* @kull_m_rpc_drsr_RpcSecurityCallback, align 4
  %24 = call i64 @kull_m_rpc_createBinding(i32* null, i8* bitcast ([13 x i32]* @.str to i8*), i32 %12, i32* null, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 %13, i32 %21, i32* null, i32 %22, i32* %6, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = call i32 @RtlZeroMemory(%struct.TYPE_11__* %8, i32 12)
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 8, i32* %28, align 4
  %29 = load i32, i32* @DRS_EXT_GETCHGREPLY_V6, align 4
  %30 = load i32, i32* @DRS_EXT_STRONG_ENCRYPTION, align 4
  %31 = or i32 %29, %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = call i64 @kull_m_rpc_drsr_getDCBind(i32* %6, i32* %39, i32** %7, %struct.TYPE_11__* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %26
  %43 = load i32 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32*)** %4, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 %43(%struct.TYPE_10__* %44, i32* %45)
  store i32 %46, i32* %5, align 4
  %47 = call i32 @IDL_DRSUnbind(i32** %7)
  br label %48

48:                                               ; preds = %42, %26
  %49 = call i32 @kull_m_rpc_deleteBinding(i32* %6)
  br label %52

50:                                               ; preds = %20
  %51 = call i32 @PRINT_ERROR(i8* bitcast ([49 x i32]* @.str.2 to i8*))
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @kull_m_rpc_createBinding(i32*, i8*, i32, i32*, i8*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @kull_m_rpc_drsr_getDCBind(i32*, i32*, i32**, %struct.TYPE_11__*) #1

declare dso_local i32 @IDL_DRSUnbind(i32**) #1

declare dso_local i32 @kull_m_rpc_deleteBinding(i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
