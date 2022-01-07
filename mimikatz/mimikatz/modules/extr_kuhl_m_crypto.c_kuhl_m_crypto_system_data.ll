; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_system_data.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_system_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i32] [i32 91, i32 37, i32 48, i32 52, i32 120, i32 47, i32 37, i32 120, i32 93, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 63, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 32, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [16 x i32] [i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 32, i32 105, i32 110, i32 102, i32 111, i32 58, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [22 x i32] [i32 9, i32 75, i32 101, i32 121, i32 32, i32 67, i32 111, i32 110, i32 116, i32 97, i32 105, i32 110, i32 101, i32 114, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [22 x i32] [i32 9, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [27 x i32] [i32 9, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 32, i32 116, i32 121, i32 112, i32 101, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [31 x i32] [i32 9, i32 84, i32 121, i32 112, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [24 x i32] [i32 9, i32 70, i32 108, i32 97, i32 103, i32 115, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [31 x i32] [i32 9, i32 80, i32 97, i32 114, i32 97, i32 109, i32 32, i32 40, i32 116, i32 111, i32 100, i32 111, i32 41, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 47, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [5 x i32] [i32 37, i32 46, i32 42, i32 115, i32 0], align 4
@.str.11 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@KUHL_M_CRYPTO_CERT_PROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_crypto_system_data(i64 %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %11, align 8
  br label %16

16:                                               ; preds = %146, %4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %18 = ptrtoint %struct.TYPE_5__* %17 to i64
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %19, %20
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %158

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @kull_m_crypto_cert_prop_id_to_name(i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i8*, i8** %10, align 8
  br label %39

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i8* [ %37, %36 ], [ bitcast ([2 x i32]* @.str.1 to i8*), %38 ]
  %41 = call i32 (i8*, ...) @kprintf(i8* bitcast ([14 x i32]* @.str to i8*), i32 %30, i32 %33, i8* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %145

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.2 to i8*))
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %134 [
    i32 138, label %51
    i32 142, label %119
    i32 136, label %119
    i32 101, label %119
    i32 131, label %128
    i32 130, label %128
    i32 129, label %128
    i32 128, label %128
    i32 135, label %133
    i32 137, label %133
    i32 134, label %133
    i32 141, label %133
    i32 132, label %133
    i32 140, label %133
    i32 133, label %133
    i32 139, label %133
  ]

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @kprintf(i8* bitcast ([16 x i32]* @.str.3 to i8*))
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %12, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %51
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = call i32 (i8*, ...) @kprintf(i8* bitcast ([22 x i32]* @.str.4 to i8*), i64 %68)
  br label %70

70:                                               ; preds = %61, %51
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = call i32 (i8*, ...) @kprintf(i8* bitcast ([22 x i32]* @.str.5 to i8*), i64 %82)
  br label %84

84:                                               ; preds = %75, %70
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @kull_m_crypto_provider_type_to_name(i32 %87)
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i8*, i8** %10, align 8
  br label %94

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i8* [ %92, %91 ], [ bitcast ([2 x i32]* @.str.1 to i8*), %93 ]
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.6 to i8*), i8* %95, i32 %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @kull_m_crypto_keytype_to_str(i32 %102)
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.7 to i8*), i32 %103, i32 %106)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i8*, ...) @kprintf(i8* bitcast ([24 x i32]* @.str.8 to i8*), i32 %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.9 to i8*), i32 %114, i32 %117)
  br label %143

119:                                              ; preds = %46, %46, %46
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = udiv i64 %122, 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str.10 to i8*), i64 %123, i64 %126)
  br label %143

128:                                              ; preds = %46, %46, %46, %46
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @kuhl_m_crypto_file_rawData(%struct.TYPE_5__* %129, i8* %130, i32 %131)
  br label %143

133:                                              ; preds = %46, %46, %46, %46, %46, %46, %46, %46
  br label %134

134:                                              ; preds = %46, %133
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @kull_m_string_wprintf_hex(i64 %137, i32 %141, i32 0)
  br label %143

143:                                              ; preds = %134, %128, %119, %94
  %144 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.11 to i8*))
  br label %145

145:                                              ; preds = %143, %39
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %148 = ptrtoint %struct.TYPE_5__* %147 to i64
  %149 = load i32, i32* @KUHL_M_CRYPTO_CERT_PROP, align 4
  %150 = load i64, i64* %5, align 8
  %151 = call i64 @FIELD_OFFSET(i32 %149, i64 %150)
  %152 = add nsw i64 %148, %151
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %152, %155
  %157 = inttoptr i64 %156 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %157, %struct.TYPE_5__** %11, align 8
  br label %16

158:                                              ; preds = %16
  %159 = load i32, i32* %9, align 4
  ret i32 %159
}

declare dso_local i8* @kull_m_crypto_cert_prop_id_to_name(i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i8* @kull_m_crypto_provider_type_to_name(i32) #1

declare dso_local i32 @kull_m_crypto_keytype_to_str(i32) #1

declare dso_local i32 @kuhl_m_crypto_file_rawData(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i64, i32, i32) #1

declare dso_local i64 @FIELD_OFFSET(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
