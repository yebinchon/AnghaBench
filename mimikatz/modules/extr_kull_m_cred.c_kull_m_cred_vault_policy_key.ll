; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_vault_policy_key.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_vault_policy_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@AES_128_KEY_SIZE = common dso_local global i64 0, align 8
@AES_256_KEY_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_cred_vault_policy_key(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i64, i64* @AES_128_KEY_SIZE, align 8
  %16 = load i64, i64* @AES_256_KEY_SIZE, align 8
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %24, 36
  br i1 %25, label %26, label %181

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = add i64 %27, 12
  %29 = inttoptr i64 %28 to i8*
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 1296188491
  br i1 %32, label %33, label %59

33:                                               ; preds = %26
  %34 = load i64, i64* %12, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %13, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AES_128_KEY_SIZE, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %40, %33
  %48 = phi i1 [ false, %33 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %9, align 4
  br i1 %48, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* @AES_128_KEY_SIZE, align 8
  %57 = call i32 @RtlCopyMemory(i32* %51, i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %50, %47
  br label %94

59:                                               ; preds = %26
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %60, 16
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 1297306443
  br i1 %65, label %66, label %93

66:                                               ; preds = %59
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 12
  %69 = inttoptr i64 %68 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %14, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AES_128_KEY_SIZE, align 8
  %80 = icmp eq i64 %78, %79
  br label %81

81:                                               ; preds = %74, %66
  %82 = phi i1 [ false, %66 ], [ %80, %74 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %9, align 4
  br i1 %82, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* @AES_128_KEY_SIZE, align 8
  %91 = call i32 @RtlCopyMemory(i32* %85, i32 %89, i64 %90)
  br label %92

92:                                               ; preds = %84, %81
  br label %93

93:                                               ; preds = %92, %59
  br label %94

94:                                               ; preds = %93, %58
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %180

97:                                               ; preds = %94
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 4, %100
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %12, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp sge i32 %108, 52
  br i1 %109, label %110, label %179

110:                                              ; preds = %97
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, 12
  %113 = inttoptr i64 %112 to i8*
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 1296188491
  br i1 %116, label %117, label %143

117:                                              ; preds = %110
  %118 = load i64, i64* %12, align 8
  %119 = inttoptr i64 %118 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %119, %struct.TYPE_7__** %13, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @AES_256_KEY_SIZE, align 8
  %130 = icmp eq i64 %128, %129
  br label %131

131:                                              ; preds = %124, %117
  %132 = phi i1 [ false, %117 ], [ %130, %124 ]
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %9, align 4
  br i1 %132, label %134, label %142

134:                                              ; preds = %131
  %135 = load i32*, i32** %8, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i64, i64* @AES_256_KEY_SIZE, align 8
  %141 = call i32 @RtlCopyMemory(i32* %135, i32 %139, i64 %140)
  br label %142

142:                                              ; preds = %134, %131
  br label %178

143:                                              ; preds = %110
  %144 = load i64, i64* %12, align 8
  %145 = add i64 %144, 16
  %146 = inttoptr i64 %145 to i8*
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 1297306443
  br i1 %149, label %150, label %177

150:                                              ; preds = %143
  %151 = load i64, i64* %12, align 8
  %152 = add i64 %151, 12
  %153 = inttoptr i64 %152 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %153, %struct.TYPE_8__** %14, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 256
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @AES_256_KEY_SIZE, align 8
  %164 = icmp eq i64 %162, %163
  br label %165

165:                                              ; preds = %158, %150
  %166 = phi i1 [ false, %150 ], [ %164, %158 ]
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %9, align 4
  br i1 %166, label %168, label %176

168:                                              ; preds = %165
  %169 = load i32*, i32** %8, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i64, i64* @AES_256_KEY_SIZE, align 8
  %175 = call i32 @RtlCopyMemory(i32* %169, i32 %173, i64 %174)
  br label %176

176:                                              ; preds = %168, %165
  br label %177

177:                                              ; preds = %176, %143
  br label %178

178:                                              ; preds = %177, %142
  br label %179

179:                                              ; preds = %178, %97
  br label %180

180:                                              ; preds = %179, %94
  br label %181

181:                                              ; preds = %180, %4
  %182 = load i32, i32* %9, align 4
  ret i32 %182
}

declare dso_local i32 @RtlCopyMemory(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
