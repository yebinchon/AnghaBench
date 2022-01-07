; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_conv.c_BN_dec2bn.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_conv.c_BN_dec2bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@BN_DEC_NUM = common dso_local global i32 0, align 4
@BN_DEC_CONV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_dec2bn(%struct.TYPE_11__** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %154

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 45
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %25, %20
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @INT_MAX, align 4
  %32 = sdiv i32 %31, 4
  %33 = icmp sle i32 %30, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @ossl_isdigit(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %34, %29
  %43 = phi i1 [ false, %29 ], [ %41, %34 ]
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %29

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @INT_MAX, align 4
  %54 = sdiv i32 %53, 4
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %48
  br label %146

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %11, align 4
  %61 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %62 = icmp eq %struct.TYPE_11__** %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %154

65:                                               ; preds = %57
  %66 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = icmp eq %struct.TYPE_11__* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = call %struct.TYPE_11__* (...) @BN_new()
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %6, align 8
  %71 = icmp eq %struct.TYPE_11__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %154

73:                                               ; preds = %69
  br label %79

74:                                               ; preds = %65
  %75 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  store %struct.TYPE_11__* %76, %struct.TYPE_11__** %6, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = call i32 @BN_zero(%struct.TYPE_11__* %77)
  br label %79

79:                                               ; preds = %74, %73
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %81, 4
  %83 = call i32* @bn_expand(%struct.TYPE_11__* %80, i32 %82)
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %146

86:                                               ; preds = %79
  %87 = load i32, i32* @BN_DEC_NUM, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @BN_DEC_NUM, align 4
  %90 = srem i32 %88, %89
  %91 = sub nsw i32 %87, %90
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @BN_DEC_NUM, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %95, %86
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %128, %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %9, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 %102, 10
  store i32 %103, i32* %7, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = sub nsw i32 %106, 48
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* @BN_DEC_NUM, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %101
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = load i32, i32* @BN_DEC_CONV, align 4
  %119 = call i32 @BN_mul_word(%struct.TYPE_11__* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @BN_add_word(%struct.TYPE_11__* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121, %116
  br label %146

127:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %127, %101
  br label %97

129:                                              ; preds = %97
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = call i32 @bn_correct_top(%struct.TYPE_11__* %130)
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %133, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = call i32 @bn_check_top(%struct.TYPE_11__* %134)
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %129
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %140, %129
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %3, align 4
  br label %154

146:                                              ; preds = %126, %85, %56
  %147 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = icmp eq %struct.TYPE_11__* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = call i32 @BN_free(%struct.TYPE_11__* %151)
  br label %153

153:                                              ; preds = %150, %146
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %144, %72, %63, %19
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @ossl_isdigit(i8 signext) #1

declare dso_local %struct.TYPE_11__* @BN_new(...) #1

declare dso_local i32 @BN_zero(%struct.TYPE_11__*) #1

declare dso_local i32* @bn_expand(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @BN_mul_word(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @BN_add_word(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @bn_correct_top(%struct.TYPE_11__*) #1

declare dso_local i32 @bn_check_top(%struct.TYPE_11__*) #1

declare dso_local i32 @BN_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
