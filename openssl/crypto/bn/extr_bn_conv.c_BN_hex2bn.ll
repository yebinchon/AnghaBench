; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_conv.c_BN_hex2bn.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_conv.c_BN_hex2bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@BN_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_hex2bn(%struct.TYPE_9__** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %172

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  store i32 1, i32* %8, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %29, %24
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @INT_MAX, align 4
  %36 = sdiv i32 %35, 4
  %37 = icmp sle i32 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @ossl_isxdigit(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %38, %33
  %47 = phi i1 [ false, %33 ], [ %45, %38 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %33

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @INT_MAX, align 4
  %58 = sdiv i32 %57, 4
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %52
  br label %164

61:                                               ; preds = %55
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %15, align 4
  %65 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %66 = icmp eq %struct.TYPE_9__** %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %3, align 4
  br label %172

69:                                               ; preds = %61
  %70 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = icmp eq %struct.TYPE_9__* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = call %struct.TYPE_9__* (...) @BN_new()
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %6, align 8
  %75 = icmp eq %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %172

77:                                               ; preds = %73
  br label %83

78:                                               ; preds = %69
  %79 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %6, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = call i32 @BN_zero(%struct.TYPE_9__* %81)
  br label %83

83:                                               ; preds = %78, %77
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 %85, 4
  %87 = call i32* @bn_expand(%struct.TYPE_9__* %84, i32 %86)
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %164

90:                                               ; preds = %83
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %12, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %139, %90
  %93 = load i32, i32* %12, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %144

95:                                               ; preds = %92
  %96 = load i32, i32* @BN_BYTES, align 4
  %97 = mul nsw i32 %96, 2
  %98 = load i32, i32* %12, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @BN_BYTES, align 4
  %102 = mul nsw i32 %101, 2
  br label %105

103:                                              ; preds = %95
  %104 = load i32, i32* %12, align 4
  br label %105

105:                                              ; preds = %103, %100
  %106 = phi i32 [ %102, %100 ], [ %104, %103 ]
  store i32 %106, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %138, %105
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @OPENSSL_hexchar2int(i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %107
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %120, %107
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 %122, 4
  %124 = load i32, i32* %13, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %10, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %121
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 %130, i32* %137, align 4
  br label %139

138:                                              ; preds = %121
  br label %107

139:                                              ; preds = %129
  %140 = load i32, i32* @BN_BYTES, align 4
  %141 = mul nsw i32 %140, 2
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %12, align 4
  br label %92

144:                                              ; preds = %92
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %149 = call i32 @bn_correct_top(%struct.TYPE_9__* %148)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %151 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__* %150, %struct.TYPE_9__** %151, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %153 = call i32 @bn_check_top(%struct.TYPE_9__* %152)
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %144
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %144
  %163 = load i32, i32* %15, align 4
  store i32 %163, i32* %3, align 4
  br label %172

164:                                              ; preds = %89, %60
  %165 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = icmp eq %struct.TYPE_9__* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %170 = call i32 @BN_free(%struct.TYPE_9__* %169)
  br label %171

171:                                              ; preds = %168, %164
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %162, %76, %67, %23
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @ossl_isxdigit(i8 signext) #1

declare dso_local %struct.TYPE_9__* @BN_new(...) #1

declare dso_local i32 @BN_zero(%struct.TYPE_9__*) #1

declare dso_local i32* @bn_expand(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @OPENSSL_hexchar2int(i32) #1

declare dso_local i32 @bn_correct_top(%struct.TYPE_9__*) #1

declare dso_local i32 @bn_check_top(%struct.TYPE_9__*) #1

declare dso_local i32 @BN_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
