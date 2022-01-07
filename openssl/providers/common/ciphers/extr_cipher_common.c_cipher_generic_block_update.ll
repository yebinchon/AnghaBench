; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common.c_cipher_generic_block_update.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common.c_cipher_generic_block_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i64, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i8*, i8*, i64)* }

@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_OUTPUT_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@PROV_R_CIPHER_OPERATION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipher_generic_block_update(i8* %0, i8* %1, i64* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %15, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %16, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i64, i64* %16, align 8
  %29 = call i64 @fillblock(i8* %25, i64* %27, i64 %28, i8** %12, i64* %13)
  store i64 %29, i64* %17, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %16, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %6
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %13, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %81, label %48

48:                                               ; preds = %43, %40, %35
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %16, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @ERR_LIB_PROV, align 4
  %54 = load i32, i32* @PROV_R_OUTPUT_BUFFER_TOO_SMALL, align 4
  %55 = call i32 @ERR_raise(i32 %53, i32 %54)
  store i32 0, i32* %7, align 4
  br label %163

56:                                               ; preds = %48
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_6__*, i8*, i8*, i64)*, i32 (%struct.TYPE_6__*, i8*, i8*, i64)** %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %16, align 8
  %68 = call i32 %61(%struct.TYPE_6__* %62, i8* %63, i8* %66, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* @ERR_LIB_PROV, align 4
  %72 = load i32, i32* @PROV_R_CIPHER_OPERATION_FAILED, align 4
  %73 = call i32 @ERR_raise(i32 %71, i32 %72)
  store i32 0, i32* %7, align 4
  br label %163

74:                                               ; preds = %56
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* %16, align 8
  store i64 %77, i64* %14, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %74, %43, %6
  %82 = load i64, i64* %17, align 8
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %84, label %147

84:                                               ; preds = %81
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %113, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %89
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* %13, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %16, align 8
  %101 = icmp uge i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ossl_assert(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* @ERR_LIB_PROV, align 4
  %107 = load i32, i32* @PROV_R_OUTPUT_BUFFER_TOO_SMALL, align 4
  %108 = call i32 @ERR_raise(i32 %106, i32 %107)
  store i32 0, i32* %7, align 4
  br label %163

109:                                              ; preds = %98
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* %17, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %17, align 8
  br label %113

113:                                              ; preds = %109, %94, %89, %84
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* %14, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %14, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %14, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32, i32* @ERR_LIB_PROV, align 4
  %122 = load i32, i32* @PROV_R_OUTPUT_BUFFER_TOO_SMALL, align 4
  %123 = call i32 @ERR_raise(i32 %121, i32 %122)
  store i32 0, i32* %7, align 4
  br label %163

124:                                              ; preds = %113
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32 (%struct.TYPE_6__*, i8*, i8*, i64)*, i32 (%struct.TYPE_6__*, i8*, i8*, i64)** %128, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = load i64, i64* %17, align 8
  %134 = call i32 %129(%struct.TYPE_6__* %130, i8* %131, i8* %132, i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %124
  %137 = load i32, i32* @ERR_LIB_PROV, align 4
  %138 = load i32, i32* @PROV_R_CIPHER_OPERATION_FAILED, align 4
  %139 = call i32 @ERR_raise(i32 %137, i32 %138)
  store i32 0, i32* %7, align 4
  br label %163

140:                                              ; preds = %124
  %141 = load i64, i64* %17, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 %141
  store i8* %143, i8** %12, align 8
  %144 = load i64, i64* %17, align 8
  %145 = load i64, i64* %13, align 8
  %146 = sub i64 %145, %144
  store i64 %146, i64* %13, align 8
  br label %147

147:                                              ; preds = %140, %81
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i64, i64* %16, align 8
  %154 = call i32 @trailingdata(i8* %150, i64* %152, i64 %153, i8** %12, i64* %13)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %147
  store i32 0, i32* %7, align 4
  br label %163

157:                                              ; preds = %147
  %158 = load i64, i64* %14, align 8
  %159 = load i64*, i64** %10, align 8
  store i64 %158, i64* %159, align 8
  %160 = load i64, i64* %13, align 8
  %161 = icmp eq i64 %160, 0
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %157, %156, %136, %120, %105, %70, %52
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i64 @fillblock(i8*, i64*, i64, i8**, i64*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @trailingdata(i8*, i64*, i64, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
