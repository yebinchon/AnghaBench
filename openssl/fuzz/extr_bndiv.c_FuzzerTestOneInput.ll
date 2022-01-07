; ModuleID = '/home/carl/AnghaBench/openssl/fuzz/extr_bndiv.c_FuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/openssl/fuzz/extr_bndiv.c_FuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LEN = common dso_local global i64 0, align 8
@b1 = common dso_local global i64 0, align 8
@b2 = common dso_local global i64 0, align 8
@b3 = common dso_local global i64 0, align 8
@b4 = common dso_local global i64 0, align 8
@ctx = common dso_local global i32 0, align 4
@b5 = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%d %d %d %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"----\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @MAX_LEN, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @MAX_LEN, align 8
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i64, i64* %4, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %4, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 63
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %4, align 8
  %27 = mul i64 %25, %26
  %28 = udiv i64 %27, 63
  store i64 %28, i64* %6, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 64
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 128
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %18, %15
  %43 = load i32*, i32** %3, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @b1, align 8
  %46 = call i64 @BN_bin2bn(i32* %43, i64 %44, i64 %45)
  %47 = load i64, i64* @b1, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @OPENSSL_assert(i32 %49)
  %51 = load i64, i64* @b1, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @BN_set_negative(i64 %51, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @b2, align 8
  %59 = call i64 @BN_bin2bn(i32* %56, i64 %57, i64 %58)
  %60 = load i64, i64* @b2, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @OPENSSL_assert(i32 %62)
  %64 = load i64, i64* @b2, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @BN_set_negative(i64 %64, i32 %65)
  %67 = load i64, i64* @b2, align 8
  %68 = call i32 @BN_is_zero(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  br label %223

71:                                               ; preds = %42
  %72 = load i64, i64* @b3, align 8
  %73 = load i64, i64* @b4, align 8
  %74 = load i64, i64* @b1, align 8
  %75 = load i64, i64* @b2, align 8
  %76 = load i32, i32* @ctx, align 4
  %77 = call i32 @BN_div(i64 %72, i64 %73, i64 %74, i64 %75, i32 %76)
  %78 = call i32 @OPENSSL_assert(i32 %77)
  %79 = load i64, i64* @b1, align 8
  %80 = call i32 @BN_is_zero(i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %71
  %83 = load i64, i64* @b3, align 8
  %84 = call i32 @BN_is_zero(i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i64, i64* @b4, align 8
  %88 = call i32 @BN_is_zero(i64 %87)
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i1 [ false, %82 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %144

93:                                               ; preds = %71
  %94 = load i64, i64* @b1, align 8
  %95 = call i64 @BN_is_negative(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = load i64, i64* @b3, align 8
  %99 = call i64 @BN_is_negative(i64 %98)
  %100 = load i64, i64* @b2, align 8
  %101 = call i64 @BN_is_negative(i64 %100)
  %102 = icmp ne i64 %99, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = load i64, i64* @b3, align 8
  %105 = call i32 @BN_is_zero(i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %103, %97
  %108 = load i64, i64* @b4, align 8
  %109 = call i64 @BN_is_negative(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i64, i64* @b4, align 8
  %113 = call i32 @BN_is_zero(i64 %112)
  %114 = icmp ne i32 %113, 0
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i1 [ true, %107 ], [ %114, %111 ]
  br label %117

117:                                              ; preds = %115, %103
  %118 = phi i1 [ false, %103 ], [ %116, %115 ]
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %5, align 4
  br label %143

120:                                              ; preds = %93
  %121 = load i64, i64* @b3, align 8
  %122 = call i64 @BN_is_negative(i64 %121)
  %123 = load i64, i64* @b2, align 8
  %124 = call i64 @BN_is_negative(i64 %123)
  %125 = icmp eq i64 %122, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %120
  %127 = load i64, i64* @b3, align 8
  %128 = call i32 @BN_is_zero(i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %126, %120
  %131 = load i64, i64* @b4, align 8
  %132 = call i64 @BN_is_negative(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i64, i64* @b4, align 8
  %136 = call i32 @BN_is_zero(i64 %135)
  %137 = icmp ne i32 %136, 0
  br label %138

138:                                              ; preds = %134, %130
  %139 = phi i1 [ true, %130 ], [ %137, %134 ]
  br label %140

140:                                              ; preds = %138, %126
  %141 = phi i1 [ false, %126 ], [ %139, %138 ]
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %140, %117
  br label %144

144:                                              ; preds = %143, %90
  %145 = load i64, i64* @b5, align 8
  %146 = load i64, i64* @b3, align 8
  %147 = load i64, i64* @b2, align 8
  %148 = load i32, i32* @ctx, align 4
  %149 = call i32 @BN_mul(i64 %145, i64 %146, i64 %147, i32 %148)
  %150 = call i32 @OPENSSL_assert(i32 %149)
  %151 = load i64, i64* @b5, align 8
  %152 = load i64, i64* @b5, align 8
  %153 = load i64, i64* @b4, align 8
  %154 = call i32 @BN_add(i64 %151, i64 %152, i64 %153)
  %155 = call i32 @OPENSSL_assert(i32 %154)
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %144
  %159 = load i64, i64* @b5, align 8
  %160 = load i64, i64* @b1, align 8
  %161 = call i32 @BN_cmp(i64 %159, i64 %160)
  %162 = icmp eq i32 %161, 0
  br label %163

163:                                              ; preds = %158, %144
  %164 = phi i1 [ false, %144 ], [ %162, %158 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %222, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* @stdout, align 4
  %170 = load i64, i64* @b1, align 8
  %171 = call i32 @BN_print_fp(i32 %169, i64 %170)
  %172 = call i32 @putchar(i8 signext 10)
  %173 = load i32, i32* @stdout, align 4
  %174 = load i64, i64* @b2, align 8
  %175 = call i32 @BN_print_fp(i32 %173, i64 %174)
  %176 = call i32 @putchar(i8 signext 10)
  %177 = load i32, i32* @stdout, align 4
  %178 = load i64, i64* @b3, align 8
  %179 = call i32 @BN_print_fp(i32 %177, i64 %178)
  %180 = call i32 @putchar(i8 signext 10)
  %181 = load i32, i32* @stdout, align 4
  %182 = load i64, i64* @b4, align 8
  %183 = call i32 @BN_print_fp(i32 %181, i64 %182)
  %184 = call i32 @putchar(i8 signext 10)
  %185 = load i32, i32* @stdout, align 4
  %186 = load i64, i64* @b5, align 8
  %187 = call i32 @BN_print_fp(i32 %185, i64 %186)
  %188 = call i32 @putchar(i8 signext 10)
  %189 = load i64, i64* @b1, align 8
  %190 = call i64 @BN_is_negative(i64 %189)
  %191 = load i64, i64* @b2, align 8
  %192 = call i64 @BN_is_negative(i64 %191)
  %193 = load i64, i64* @b3, align 8
  %194 = call i64 @BN_is_negative(i64 %193)
  %195 = load i64, i64* @b4, align 8
  %196 = call i64 @BN_is_negative(i64 %195)
  %197 = load i64, i64* @b4, align 8
  %198 = call i32 @BN_is_zero(i64 %197)
  %199 = load i64, i64* @b3, align 8
  %200 = call i64 @BN_is_negative(i64 %199)
  %201 = load i64, i64* @b2, align 8
  %202 = call i64 @BN_is_negative(i64 %201)
  %203 = icmp ne i64 %200, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %168
  %205 = load i64, i64* @b4, align 8
  %206 = call i64 @BN_is_negative(i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = load i64, i64* @b4, align 8
  %210 = call i32 @BN_is_zero(i64 %209)
  %211 = icmp ne i32 %210, 0
  br label %212

212:                                              ; preds = %208, %204
  %213 = phi i1 [ true, %204 ], [ %211, %208 ]
  br label %214

214:                                              ; preds = %212, %168
  %215 = phi i1 [ false, %168 ], [ %213, %212 ]
  %216 = zext i1 %215 to i32
  %217 = load i64, i64* @b5, align 8
  %218 = load i64, i64* @b1, align 8
  %219 = call i32 @BN_cmp(i64 %217, i64 %218)
  %220 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %190, i64 %192, i64 %194, i64 %196, i32 %198, i32 %216, i32 %219)
  %221 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %222

222:                                              ; preds = %214, %163
  br label %223

223:                                              ; preds = %222, %70
  %224 = load i32, i32* %5, align 4
  %225 = call i32 @OPENSSL_assert(i32 %224)
  %226 = call i32 (...) @ERR_clear_error()
  ret i32 0
}

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i64 @BN_bin2bn(i32*, i64, i64) #1

declare dso_local i32 @BN_set_negative(i64, i32) #1

declare dso_local i32 @BN_is_zero(i64) #1

declare dso_local i32 @BN_div(i64, i64, i64, i64, i32) #1

declare dso_local i64 @BN_is_negative(i64) #1

declare dso_local i32 @BN_mul(i64, i64, i64, i32) #1

declare dso_local i32 @BN_add(i64, i64, i64) #1

declare dso_local i32 @BN_cmp(i64, i64) #1

declare dso_local i32 @BN_print_fp(i32, i64) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printf(i8*, i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @ERR_clear_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
