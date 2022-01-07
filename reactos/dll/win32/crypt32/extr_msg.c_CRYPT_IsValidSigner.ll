; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CRYPT_IsValidSigner.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CRYPT_IsValidSigner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i32, %struct.TYPE_14__, %struct.TYPE_25__, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@E_INVALIDARG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"CMSG_SIGNER_ENCODE_INFO with CMS fields unsupported\0A\00", align 1
@CRYPT_E_UNKNOWN_ALGO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @CRYPT_IsValidSigner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_IsValidSigner(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %4 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = icmp ne i64 %7, 4
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 48
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @E_INVALIDARG, align 4
  %17 = call i32 @SetLastError(i32 %16)
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %162

19:                                               ; preds = %9, %1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @E_INVALIDARG, align 4
  %35 = call i32 @SetLastError(i32 %34)
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %162

37:                                               ; preds = %25
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @E_INVALIDARG, align 4
  %47 = call i32 @SetLastError(i32 %46)
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %2, align 4
  br label %162

49:                                               ; preds = %37
  br label %140

50:                                               ; preds = %19
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %54, 48
  br i1 %55, label %56, label %139

56:                                               ; preds = %50
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %126 [
    i32 0, label %61
    i32 129, label %86
    i32 128, label %113
  ]

61:                                               ; preds = %56
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @E_INVALIDARG, align 4
  %71 = call i32 @SetLastError(i32 %70)
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %2, align 4
  br label %162

73:                                               ; preds = %61
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @E_INVALIDARG, align 4
  %83 = call i32 @SetLastError(i32 %82)
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %2, align 4
  br label %162

85:                                               ; preds = %73
  br label %129

86:                                               ; preds = %56
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %86
  %96 = load i32, i32* @E_INVALIDARG, align 4
  %97 = call i32 @SetLastError(i32 %96)
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %2, align 4
  br label %162

99:                                               ; preds = %86
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %99
  %109 = load i32, i32* @E_INVALIDARG, align 4
  %110 = call i32 @SetLastError(i32 %109)
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %2, align 4
  br label %162

112:                                              ; preds = %99
  br label %129

113:                                              ; preds = %56
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* @E_INVALIDARG, align 4
  %123 = call i32 @SetLastError(i32 %122)
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %2, align 4
  br label %162

125:                                              ; preds = %113
  br label %129

126:                                              ; preds = %56
  %127 = load i32, i32* @E_INVALIDARG, align 4
  %128 = call i32 @SetLastError(i32 %127)
  br label %129

129:                                              ; preds = %126, %125, %112, %85
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = call i32 @FIXME(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %2, align 4
  br label %162

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %50
  br label %140

140:                                              ; preds = %139, %49
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* @E_INVALIDARG, align 4
  %147 = call i32 @SetLastError(i32 %146)
  %148 = load i32, i32* @FALSE, align 4
  store i32 %148, i32* %2, align 4
  br label %162

149:                                              ; preds = %140
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @CertOIDToAlgId(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %149
  %157 = load i32, i32* @CRYPT_E_UNKNOWN_ALGO, align 4
  %158 = call i32 @SetLastError(i32 %157)
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %2, align 4
  br label %162

160:                                              ; preds = %149
  %161 = load i32, i32* @TRUE, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %160, %156, %145, %135, %121, %108, %95, %81, %69, %45, %33, %15
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @CertOIDToAlgId(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
