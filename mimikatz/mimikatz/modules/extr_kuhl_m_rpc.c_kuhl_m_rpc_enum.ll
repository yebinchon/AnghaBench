; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_rpc.c_kuhl_m_rpc_enum.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_rpc.c_kuhl_m_rpc_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@RPC_C_AUTHN_GSS_NEGOTIATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@KULL_M_RPC_AUTH_IDENTITY_HANDLE_NULLSESSION = common dso_local global i32* null, align 8
@RPC_C_IMP_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@RPC_C_EP_ALL_ELTS = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i32] [i32 85, i32 85, i32 73, i32 68, i32 58, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 9, i32 37, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 9, i32 37, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [33 x i32] [i32 82, i32 112, i32 99, i32 66, i32 105, i32 110, i32 100, i32 105, i32 110, i32 103, i32 84, i32 111, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 66, i32 105, i32 110, i32 100, i32 105, i32 110, i32 103, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@RPC_X_NO_MORE_ENTRIES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [70 x i32] [i32 82, i32 112, i32 99, i32 77, i32 103, i32 109, i32 116, i32 69, i32 112, i32 69, i32 108, i32 116, i32 73, i32 110, i32 113, i32 78, i32 101, i32 120, i32 116, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 44, i32 32, i32 109, i32 97, i32 121, i32 98, i32 101, i32 32, i32 114, i32 101, i32 97, i32 108, i32 108, i32 121, i32 32, i32 110, i32 111, i32 32, i32 69, i32 80, i32 44, i32 32, i32 109, i32 97, i32 121, i32 98, i32 101, i32 32, i32 110, i32 101, i32 116, i32 119, i32 111, i32 114, i32 107, i32 32, i32 112, i32 114, i32 111, i32 98, i32 108, i32 101, i32 109, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [27 x i32] [i32 82, i32 112, i32 99, i32 77, i32 103, i32 109, i32 116, i32 69, i32 112, i32 69, i32 108, i32 116, i32 73, i32 110, i32 113, i32 78, i32 101, i32 120, i32 116, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [27 x i32] [i32 82, i32 112, i32 99, i32 77, i32 103, i32 109, i32 116, i32 69, i32 112, i32 69, i32 108, i32 116, i32 73, i32 110, i32 113, i32 68, i32 111, i32 110, i32 101, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [28 x i32] [i32 82, i32 112, i32 99, i32 77, i32 103, i32 109, i32 116, i32 69, i32 112, i32 69, i32 108, i32 116, i32 73, i32 110, i32 113, i32 66, i32 101, i32 103, i32 105, i32 110, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_rpc_enum(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %20 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %16, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32**, i32*** %4, align 8
  %24 = load i32, i32* @RPC_C_AUTHN_GSS_NEGOTIATE, align 4
  %25 = load i64, i64* @TRUE, align 8
  %26 = call i32 @kull_m_rpc_getArgs(i32 %22, i32** %23, i32* %17, i32* %18, i32* null, i32* null, i32* %19, i32 %24, i64* %14, i32* null, i64 %25)
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i64, i64* @FALSE, align 8
  %30 = load i32, i32* %19, align 4
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32*, i32** @KULL_M_RPC_AUTH_IDENTITY_HANDLE_NULLSESSION, align 8
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32* [ %34, %33 ], [ null, %35 ]
  %38 = load i32, i32* @RPC_C_IMP_LEVEL_DEFAULT, align 4
  %39 = call i64 @kull_m_rpc_createBinding(i32* null, i32 %27, i32 %28, i32* null, i32* null, i64 %29, i32 %30, i32* %37, i32 %38, i64* %7, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %132

41:                                               ; preds = %36
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* @RPC_C_EP_ALL_ELTS, align 4
  %44 = call i64 @RpcMgmtEpEltInqBegin(i64 %42, i32 %43, i32* null, i32 0, i32* null, i32* %9)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @RPC_S_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %127

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %96, %48
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @RpcMgmtEpEltInqNext(i32 %50, %struct.TYPE_8__* %10, i64* %8, i32* null, i64* %11)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @RPC_S_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %95

55:                                               ; preds = %49
  %56 = load i64, i64* @TRUE, align 8
  store i64 %56, i64* %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %58 = call i64 @RtlEqualGuid(%struct.TYPE_7__* %57, %struct.TYPE_7__* %13)
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %55
  %62 = call i32 (i8*, ...) @kprintf(i8* bitcast ([7 x i32]* @.str to i8*))
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %64 = call i32 @kull_m_string_displayGUID(%struct.TYPE_7__* %63)
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, i64* %11, align 8
  %69 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.1 to i8*), i64 %68)
  %70 = call i32 @RpcStringFree(i64* %11)
  br label %71

71:                                               ; preds = %67, %61
  %72 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %74 = bitcast %struct.TYPE_7__* %13 to i8*
  %75 = bitcast %struct.TYPE_7__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 4, i1 false)
  br label %76

76:                                               ; preds = %71, %55
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load i64, i64* %8, align 8
  %81 = call i64 @RpcBindingToStringBinding(i64 %80, i64* %12)
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @RPC_S_OK, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i64, i64* %12, align 8
  %87 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str.3 to i8*), i64 %86)
  %88 = call i32 @RpcStringFree(i64* %12)
  br label %92

89:                                               ; preds = %79
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @PRINT_ERROR(i8* bitcast ([33 x i32]* @.str.4 to i8*), i64 %90)
  br label %92

92:                                               ; preds = %89, %85
  %93 = call i32 @RpcBindingFree(i64* %8)
  br label %94

94:                                               ; preds = %92, %76
  br label %95

95:                                               ; preds = %94, %49
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @RPC_S_OK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %49, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %16, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* @RPC_X_NO_MORE_ENTRIES, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @PRINT_ERROR(i8* bitcast ([70 x i32]* @.str.5 to i8*), i64 %108)
  br label %118

110:                                              ; preds = %103, %100
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @RPC_X_NO_MORE_ENTRIES, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str.6 to i8*), i64 %115)
  br label %117

117:                                              ; preds = %114, %110
  br label %118

118:                                              ; preds = %117, %107
  %119 = call i64 @RpcMgmtEpEltInqDone(i32* %9)
  store i64 %119, i64* %5, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* @RPC_S_OK, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i64, i64* %5, align 8
  %125 = call i32 @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str.7 to i8*), i64 %124)
  br label %126

126:                                              ; preds = %123, %118
  br label %130

127:                                              ; preds = %41
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @PRINT_ERROR(i8* bitcast ([28 x i32]* @.str.8 to i8*), i64 %128)
  br label %130

130:                                              ; preds = %127, %126
  %131 = call i32 @kull_m_rpc_deleteBinding(i64* %7)
  br label %132

132:                                              ; preds = %130, %36
  %133 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kull_m_rpc_getArgs(i32, i32**, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32*, i64) #2

declare dso_local i64 @kull_m_rpc_createBinding(i32*, i32, i32, i32*, i32*, i64, i32, i32*, i32, i64*, i32*) #2

declare dso_local i64 @RpcMgmtEpEltInqBegin(i64, i32, i32*, i32, i32*, i32*) #2

declare dso_local i64 @RpcMgmtEpEltInqNext(i32, %struct.TYPE_8__*, i64*, i32*, i64*) #2

declare dso_local i64 @RtlEqualGuid(%struct.TYPE_7__*, %struct.TYPE_7__*) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i32 @kull_m_string_displayGUID(%struct.TYPE_7__*) #2

declare dso_local i32 @RpcStringFree(i64*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @RpcBindingToStringBinding(i64, i64*) #2

declare dso_local i32 @PRINT_ERROR(i8*, i64) #2

declare dso_local i32 @RpcBindingFree(i64*) #2

declare dso_local i64 @RpcMgmtEpEltInqDone(i32*) #2

declare dso_local i32 @kull_m_rpc_deleteBinding(i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
