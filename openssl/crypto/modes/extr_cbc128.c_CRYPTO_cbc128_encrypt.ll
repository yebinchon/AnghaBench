; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_cbc128.c_CRYPTO_cbc128_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_cbc128.c_CRYPTO_cbc128_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRICT_ALIGNMENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_cbc128_encrypt(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32 (i8*, i8*, i8*)* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*, i8*, i8*)*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 (i8*, i8*, i8*)* %5, i32 (i8*, i8*, i8*)** %12, align 8
  %15 = load i8*, i8** %11, align 8
  store i8* %15, i8** %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  br label %184

19:                                               ; preds = %6
  %20 = load i64, i64* @STRICT_ALIGNMENT, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load i8*, i8** %8, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = or i64 %24, %26
  %28 = load i8*, i8** %11, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = or i64 %27, %29
  %31 = urem i64 %30, 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %60, %33
  %35 = load i64, i64* %9, align 8
  %36 = icmp uge i64 %35, 16
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  store i64 0, i64* %13, align 8
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i64, i64* %13, align 8
  %40 = icmp ult i64 %39, 16
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8*, i8** %14, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = xor i32 %46, %51
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 %53, i8* %56, align 1
  br label %57

57:                                               ; preds = %41
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %13, align 8
  br label %38

60:                                               ; preds = %38
  %61 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %12, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 %61(i8* %62, i8* %63, i8* %64)
  %66 = load i8*, i8** %8, align 8
  store i8* %66, i8** %14, align 8
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %67, 16
  store i64 %68, i64* %9, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 16
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 16
  store i8* %72, i8** %8, align 8
  br label %34

73:                                               ; preds = %34
  br label %115

74:                                               ; preds = %22, %19
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i64, i64* %9, align 8
  %77 = icmp uge i64 %76, 16
  br i1 %77, label %78, label %114

78:                                               ; preds = %75
  store i64 0, i64* %13, align 8
  br label %79

79:                                               ; preds = %98, %78
  %80 = load i64, i64* %13, align 8
  %81 = icmp ult i64 %80, 16
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = bitcast i8* %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = bitcast i8* %90 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = xor i64 %87, %92
  %94 = load i8*, i8** %8, align 8
  %95 = load i64, i64* %13, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = bitcast i8* %96 to i64*
  store i64 %93, i64* %97, align 8
  br label %98

98:                                               ; preds = %82
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %99, 8
  store i64 %100, i64* %13, align 8
  br label %79

101:                                              ; preds = %79
  %102 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %12, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 %102(i8* %103, i8* %104, i8* %105)
  %107 = load i8*, i8** %8, align 8
  store i8* %107, i8** %14, align 8
  %108 = load i64, i64* %9, align 8
  %109 = sub i64 %108, 16
  store i64 %109, i64* %9, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 16
  store i8* %111, i8** %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 16
  store i8* %113, i8** %8, align 8
  br label %75

114:                                              ; preds = %75
  br label %115

115:                                              ; preds = %114, %73
  br label %116

116:                                              ; preds = %173, %115
  %117 = load i64, i64* %9, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %180

119:                                              ; preds = %116
  store i64 0, i64* %13, align 8
  br label %120

120:                                              ; preds = %145, %119
  %121 = load i64, i64* %13, align 8
  %122 = icmp ult i64 %121, 16
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %9, align 8
  %126 = icmp ult i64 %124, %125
  br label %127

127:                                              ; preds = %123, %120
  %128 = phi i1 [ false, %120 ], [ %126, %123 ]
  br i1 %128, label %129, label %148

129:                                              ; preds = %127
  %130 = load i8*, i8** %7, align 8
  %131 = load i64, i64* %13, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8*, i8** %14, align 8
  %136 = load i64, i64* %13, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = xor i32 %134, %139
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %8, align 8
  %143 = load i64, i64* %13, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8 %141, i8* %144, align 1
  br label %145

145:                                              ; preds = %129
  %146 = load i64, i64* %13, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %13, align 8
  br label %120

148:                                              ; preds = %127
  br label %149

149:                                              ; preds = %160, %148
  %150 = load i64, i64* %13, align 8
  %151 = icmp ult i64 %150, 16
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = load i8*, i8** %14, align 8
  %154 = load i64, i64* %13, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = load i8*, i8** %8, align 8
  %158 = load i64, i64* %13, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8 %156, i8* %159, align 1
  br label %160

160:                                              ; preds = %152
  %161 = load i64, i64* %13, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %13, align 8
  br label %149

163:                                              ; preds = %149
  %164 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %12, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = call i32 %164(i8* %165, i8* %166, i8* %167)
  %169 = load i8*, i8** %8, align 8
  store i8* %169, i8** %14, align 8
  %170 = load i64, i64* %9, align 8
  %171 = icmp ule i64 %170, 16
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %180

173:                                              ; preds = %163
  %174 = load i64, i64* %9, align 8
  %175 = sub i64 %174, 16
  store i64 %175, i64* %9, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 16
  store i8* %177, i8** %7, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 16
  store i8* %179, i8** %8, align 8
  br label %116

180:                                              ; preds = %172, %116
  %181 = load i8*, i8** %11, align 8
  %182 = load i8*, i8** %14, align 8
  %183 = call i32 @memcpy(i8* %181, i8* %182, i32 16)
  br label %184

184:                                              ; preds = %180, %18
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
