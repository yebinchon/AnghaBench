; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common.c_cipher_generic_block_final.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common.c_cipher_generic_block_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i64, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i8*, i8*, i64)* }

@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_WRONG_FINAL_BLOCK_LENGTH = common dso_local global i32 0, align 4
@PROV_R_OUTPUT_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@PROV_R_CIPHER_OPERATION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipher_generic_block_final(i8* %0, i8* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @padblock(i8* %29, i64* %31, i64 %32)
  br label %53

34:                                               ; preds = %21
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64*, i64** %8, align 8
  store i64 0, i64* %40, align 8
  store i32 1, i32* %5, align 4
  br label %166

41:                                               ; preds = %34
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @ERR_LIB_PROV, align 4
  %49 = load i32, i32* @PROV_R_WRONG_FINAL_BLOCK_LENGTH, align 4
  %50 = call i32 @ERR_raise(i32 %48, i32 %49)
  store i32 0, i32* %5, align 4
  br label %166

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %26
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @ERR_LIB_PROV, align 4
  %59 = load i32, i32* @PROV_R_OUTPUT_BUFFER_TOO_SMALL, align 4
  %60 = call i32 @ERR_raise(i32 %58, i32 %59)
  store i32 0, i32* %5, align 4
  br label %166

61:                                               ; preds = %53
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_6__*, i8*, i8*, i64)*, i32 (%struct.TYPE_6__*, i8*, i8*, i64)** %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 %66(%struct.TYPE_6__* %67, i8* %68, i8* %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %61
  %76 = load i32, i32* @ERR_LIB_PROV, align 4
  %77 = load i32, i32* @PROV_R_CIPHER_OPERATION_FAILED, align 4
  %78 = call i32 @ERR_raise(i32 %76, i32 %77)
  store i32 0, i32* %5, align 4
  br label %166

79:                                               ; preds = %61
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64*, i64** %8, align 8
  store i64 %82, i64* %83, align 8
  store i32 1, i32* %5, align 4
  br label %166

84:                                               ; preds = %4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %84
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load i64*, i64** %8, align 8
  store i64 0, i64* %101, align 8
  store i32 1, i32* %5, align 4
  br label %166

102:                                              ; preds = %95, %90
  %103 = load i32, i32* @ERR_LIB_PROV, align 4
  %104 = load i32, i32* @PROV_R_WRONG_FINAL_BLOCK_LENGTH, align 4
  %105 = call i32 @ERR_raise(i32 %103, i32 %104)
  store i32 0, i32* %5, align 4
  br label %166

106:                                              ; preds = %84
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32 (%struct.TYPE_6__*, i8*, i8*, i64)*, i32 (%struct.TYPE_6__*, i8*, i8*, i64)** %110, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i64, i64* %11, align 8
  %120 = call i32 %111(%struct.TYPE_6__* %112, i8* %115, i8* %118, i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %106
  %123 = load i32, i32* @ERR_LIB_PROV, align 4
  %124 = load i32, i32* @PROV_R_CIPHER_OPERATION_FAILED, align 4
  %125 = call i32 @ERR_raise(i32 %123, i32 %124)
  store i32 0, i32* %5, align 4
  br label %166

126:                                              ; preds = %106
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @unpadblock(i8* %134, i64* %136, i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %131
  store i32 0, i32* %5, align 4
  br label %166

141:                                              ; preds = %131, %126
  %142 = load i64, i64* %9, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ult i64 %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i32, i32* @ERR_LIB_PROV, align 4
  %149 = load i32, i32* @PROV_R_OUTPUT_BUFFER_TOO_SMALL, align 4
  %150 = call i32 @ERR_raise(i32 %148, i32 %149)
  store i32 0, i32* %5, align 4
  br label %166

151:                                              ; preds = %141
  %152 = load i8*, i8** %7, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @memcpy(i8* %152, i8* %155, i64 %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64*, i64** %8, align 8
  store i64 %162, i64* %163, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  store i64 0, i64* %165, align 8
  store i32 1, i32* %5, align 4
  br label %166

166:                                              ; preds = %151, %147, %140, %122, %102, %100, %79, %75, %57, %47, %39
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @padblock(i8*, i64*, i64) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @unpadblock(i8*, i64*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
