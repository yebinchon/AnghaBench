; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_assembly.c_assembly_get_pubkey_token.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_assembly.c_assembly_get_pubkey_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@BYTES_PER_TOKEN = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@mdtAssembly = common dso_local global i32 0, align 4
@ASSEMBLYTABLE = common dso_local global i32 0, align 4
@PublicKey = common dso_local global i32 0, align 4
@BCRYPT_SHA1_ALGORITHM = common dso_local global i32 0, align 4
@MS_PRIMITIVE_PROVIDER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@TOKEN_LENGTH = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assembly_get_pubkey_token(%struct.TYPE_7__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [20 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %19 = load i32, i32* @BYTES_PER_TOKEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @E_FAIL, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32**, i32*** %5, align 8
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* @mdtAssembly, align 4
  %29 = call i64 @TableFromToken(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @E_FAIL, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %126

37:                                               ; preds = %2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32* @assembly_data_offset(%struct.TYPE_7__* %38, i32 %39)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @E_FAIL, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %126

45:                                               ; preds = %37
  %46 = load i32, i32* @ASSEMBLYTABLE, align 4
  %47 = load i32, i32* @PublicKey, align 4
  %48 = call i32 @FIELD_OFFSET(i32 %46, i32 %47)
  %49 = load i32*, i32** %11, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %11, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %17, align 4
  br label %63

60:                                               ; preds = %45
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = load i32, i32* %17, align 4
  %66 = call i32* @assembly_get_blob(%struct.TYPE_7__* %64, i32 %65, i32* %7)
  store i32* %66, i32** %10, align 8
  %67 = load i32, i32* @BCRYPT_SHA1_ALGORITHM, align 4
  %68 = load i32, i32* @MS_PRIMITIVE_PROVIDER, align 4
  %69 = call i64 @BCryptOpenAlgorithmProvider(i32* %12, i32 %67, i32 %68, i32 0)
  %70 = load i64, i64* @STATUS_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @E_FAIL, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %126

74:                                               ; preds = %63
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %7, align 4
  %78 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %79 = call i64 @BCryptHash(i32 %75, i32* null, i32 0, i32* %76, i32 %77, i32* %78, i32 80)
  %80 = load i64, i64* @STATUS_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @E_FAIL, align 4
  store i32 %83, i32* %15, align 4
  br label %122

84:                                               ; preds = %74
  store i32 80, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %103, %84
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %89, 8
  %91 = icmp sge i32 %88, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %22, i64 %101
  store i32 %96, i32* %102, align 4
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %6, align 4
  br label %87

106:                                              ; preds = %87
  %107 = load i32, i32* @TOKEN_LENGTH, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = call i32* @heap_alloc(i32 %111)
  store i32* %112, i32** %16, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %106
  %115 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %115, i32* %15, align 4
  br label %122

116:                                              ; preds = %106
  %117 = load i32*, i32** %16, align 8
  %118 = call i32 @token_to_str(i32* %22, i32* %117)
  %119 = load i32*, i32** %16, align 8
  %120 = load i32**, i32*** %5, align 8
  store i32* %119, i32** %120, align 8
  %121 = load i32, i32* @S_OK, align 4
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %116, %114, %82
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @BCryptCloseAlgorithmProvider(i32 %123, i32 0)
  %125 = load i32, i32* %15, align 4
  store i32 %125, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %126

126:                                              ; preds = %122, %72, %43, %35
  %127 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @TableFromToken(i32) #2

declare dso_local i32* @assembly_data_offset(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @FIELD_OFFSET(i32, i32) #2

declare dso_local i32* @assembly_get_blob(%struct.TYPE_7__*, i32, i32*) #2

declare dso_local i64 @BCryptOpenAlgorithmProvider(i32*, i32, i32, i32) #2

declare dso_local i64 @BCryptHash(i32, i32*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32* @heap_alloc(i32) #2

declare dso_local i32 @token_to_str(i32*, i32*) #2

declare dso_local i32 @BCryptCloseAlgorithmProvider(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
