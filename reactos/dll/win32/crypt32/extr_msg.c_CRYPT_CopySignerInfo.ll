; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CRYPT_CopySignerInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CRYPT_CopySignerInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_13__, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"(%p, %d, %p)\0A\00", align 1
@CERT_ID_ISSUER_SERIAL_NUMBER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, %struct.TYPE_15__*)* @CRYPT_CopySignerInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_CopySignerInfo(i8* %0, i64* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  store i64 32, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i64 [ %17, %15 ], [ 0, %18 ]
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %12, i64 %20, %struct.TYPE_15__* %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CERT_ID_ISSUER_SERIAL_NUMBER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %19
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %7, align 8
  br label %57

48:                                               ; preds = %19
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = call i64 @CRYPT_SizeOfKeyIdAsIssuerAndSerial(i32* %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %48, %29
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @strlen(i64 %67)
  %69 = add nsw i64 %68, 1
  %70 = load i64, i64* %7, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %63, %57
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %7, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %72
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @strlen(i64 %89)
  %91 = add nsw i64 %90, 1
  %92 = load i64, i64* %7, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %7, align 8
  br label %94

94:                                               ; preds = %85, %72
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* %7, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = add nsw i64 %106, %105
  store i64 %107, i64* %7, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i64 @ALIGN_DWORD_PTR(i64 %108)
  store i64 %109, i64* %7, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = call i64 @CRYPT_SizeOfAttributes(i32* %111)
  %113 = load i64, i64* %7, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %7, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = call i64 @CRYPT_SizeOfAttributes(i32* %116)
  %118 = load i64, i64* %7, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %7, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %94
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %9, align 4
  br label %212

124:                                              ; preds = %94
  %125 = load i64*, i64** %5, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @ERROR_MORE_DATA, align 4
  %131 = call i32 @SetLastError(i32 %130)
  %132 = load i32, i32* @FALSE, align 4
  store i32 %132, i32* %9, align 4
  br label %211

133:                                              ; preds = %124
  %134 = load i8*, i8** %4, align 8
  %135 = bitcast i8* %134 to i32*
  %136 = getelementptr inbounds i32, i32* %135, i64 32
  store i32* %136, i32** %10, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = bitcast i8* %137 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %138, %struct.TYPE_14__** %11, align 8
  %139 = load i32, i32* @TRUE, align 4
  store i32 %139, i32* %9, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @CERT_ID_ISSUER_SERIAL_NUMBER, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %168

151:                                              ; preds = %133
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 6
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = call i32 @CRYPT_CopyBlob(i32* %153, %struct.TYPE_16__* %158, i32** %10)
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = call i32 @CRYPT_CopyBlob(i32* %161, %struct.TYPE_16__* %166, i32** %10)
  br label %179

168:                                              ; preds = %133
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 6
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 5
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @CRYPT_CopyKeyIdAsIssuerAndSerial(i32* %170, i32* %172, i32* %176, i64 %177, i32** %10)
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %168, %151
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %210

182:                                              ; preds = %179
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 4
  %187 = call i32 @CRYPT_CopyAlgorithmId(i32* %184, %struct.TYPE_17__* %186, i32** %10)
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 3
  %192 = call i32 @CRYPT_CopyAlgorithmId(i32* %189, %struct.TYPE_17__* %191, i32** %10)
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = call i32 @CRYPT_CopyBlob(i32* %194, %struct.TYPE_16__* %196, i32** %10)
  %198 = load i32*, i32** %10, align 8
  %199 = call i32* @POINTER_ALIGN_DWORD_PTR(i32* %198)
  store i32* %199, i32** %10, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = call i32 @CRYPT_CopyAttributes(i32* %201, i32* %203, i32** %10)
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = call i32 @CRYPT_CopyAttributes(i32* %206, i32* %208, i32** %10)
  br label %210

210:                                              ; preds = %182, %179
  br label %211

211:                                              ; preds = %210, %129
  br label %212

212:                                              ; preds = %211, %122
  %213 = load i64, i64* %7, align 8
  %214 = load i64*, i64** %5, align 8
  store i64 %213, i64* %214, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = inttoptr i64 %216 to i8*
  %218 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %217)
  %219 = load i32, i32* %9, align 4
  ret i32 %219
}

declare dso_local i32 @TRACE(i8*, i8*, ...) #1

declare dso_local i64 @CRYPT_SizeOfKeyIdAsIssuerAndSerial(i32*) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @ALIGN_DWORD_PTR(i64) #1

declare dso_local i64 @CRYPT_SizeOfAttributes(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CRYPT_CopyBlob(i32*, %struct.TYPE_16__*, i32**) #1

declare dso_local i32 @CRYPT_CopyKeyIdAsIssuerAndSerial(i32*, i32*, i32*, i64, i32**) #1

declare dso_local i32 @CRYPT_CopyAlgorithmId(i32*, %struct.TYPE_17__*, i32**) #1

declare dso_local i32* @POINTER_ALIGN_DWORD_PTR(i32*) #1

declare dso_local i32 @CRYPT_CopyAttributes(i32*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
