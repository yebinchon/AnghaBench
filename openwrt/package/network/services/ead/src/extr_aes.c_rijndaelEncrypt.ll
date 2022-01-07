; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_aes.c_rijndaelEncrypt.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_aes.c_rijndaelEncrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = common dso_local global i32 0, align 4
@t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @rijndaelEncrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rijndaelEncrypt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 10, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @GETU32(i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = call i32 @GETU32(i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %25, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = call i32 @GETU32(i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %32, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 12
  %39 = call i32 @GETU32(i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %39, %42
  store i32 %43, i32* %10, align 4
  store i32 5, i32* %16, align 4
  br label %44

44:                                               ; preds = %111, %3
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %47)
  %49 = xor i32 %46, %48
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %50)
  %52 = xor i32 %49, %51
  %53 = load i32, i32* %10, align 4
  %54 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %53)
  %55 = xor i32 %52, %54
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %55, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %62)
  %64 = xor i32 %61, %63
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %65)
  %67 = xor i32 %64, %66
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %68)
  %70 = xor i32 %67, %69
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %70, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %77)
  %79 = xor i32 %76, %78
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %80)
  %82 = xor i32 %79, %81
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %83)
  %85 = xor i32 %82, %84
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 6
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %85, %88
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %92)
  %94 = xor i32 %91, %93
  %95 = load i32, i32* %8, align 4
  %96 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %95)
  %97 = xor i32 %94, %96
  %98 = load i32, i32* %9, align 4
  %99 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %98)
  %100 = xor i32 %97, %99
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 7
  %103 = load i32, i32* %102, align 4
  %104 = xor i32 %100, %103
  store i32 %104, i32* %14, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 8
  store i32* %106, i32** %4, align 8
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %16, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %44
  br label %172

111:                                              ; preds = %44
  %112 = load i32, i32* %11, align 4
  %113 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %112)
  %114 = load i32, i32* %12, align 4
  %115 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %114)
  %116 = xor i32 %113, %115
  %117 = load i32, i32* %13, align 4
  %118 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %117)
  %119 = xor i32 %116, %118
  %120 = load i32, i32* %14, align 4
  %121 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %120)
  %122 = xor i32 %119, %121
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = xor i32 %122, %125
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %127)
  %129 = load i32, i32* %13, align 4
  %130 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %129)
  %131 = xor i32 %128, %130
  %132 = load i32, i32* %14, align 4
  %133 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %132)
  %134 = xor i32 %131, %133
  %135 = load i32, i32* %11, align 4
  %136 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %135)
  %137 = xor i32 %134, %136
  %138 = load i32*, i32** %4, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = xor i32 %137, %140
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %142)
  %144 = load i32, i32* %14, align 4
  %145 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %144)
  %146 = xor i32 %143, %145
  %147 = load i32, i32* %11, align 4
  %148 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %147)
  %149 = xor i32 %146, %148
  %150 = load i32, i32* %12, align 4
  %151 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %150)
  %152 = xor i32 %149, %151
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = xor i32 %152, %155
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %14, align 4
  %158 = call i32 (i32, ...) bitcast (i32 (...)* @TE0 to i32 (i32, ...)*)(i32 %157)
  %159 = load i32, i32* %11, align 4
  %160 = call i32 (i32, ...) bitcast (i32 (...)* @TE1 to i32 (i32, ...)*)(i32 %159)
  %161 = xor i32 %158, %160
  %162 = load i32, i32* %12, align 4
  %163 = call i32 (i32, ...) bitcast (i32 (...)* @TE2 to i32 (i32, ...)*)(i32 %162)
  %164 = xor i32 %161, %163
  %165 = load i32, i32* %13, align 4
  %166 = call i32 (i32, ...) bitcast (i32 (...)* @TE3 to i32 (i32, ...)*)(i32 %165)
  %167 = xor i32 %164, %166
  %168 = load i32*, i32** %4, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  %170 = load i32, i32* %169, align 4
  %171 = xor i32 %167, %170
  store i32 %171, i32* %10, align 4
  br label %44

172:                                              ; preds = %110
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @TE41(i32 %173)
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @TE42(i32 %175)
  %177 = xor i32 %174, %176
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @TE43(i32 %178)
  %180 = xor i32 %177, %179
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @TE44(i32 %181)
  %183 = xor i32 %180, %182
  %184 = load i32*, i32** %4, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = xor i32 %183, %186
  store i32 %187, i32* %7, align 4
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @PUTU32(i32* %188, i32 %189)
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @TE41(i32 %191)
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @TE42(i32 %193)
  %195 = xor i32 %192, %194
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @TE43(i32 %196)
  %198 = xor i32 %195, %197
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @TE44(i32 %199)
  %201 = xor i32 %198, %200
  %202 = load i32*, i32** %4, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = xor i32 %201, %204
  store i32 %205, i32* %8, align 4
  %206 = load i32*, i32** %6, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 4
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @PUTU32(i32* %207, i32 %208)
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @TE41(i32 %210)
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @TE42(i32 %212)
  %214 = xor i32 %211, %213
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @TE43(i32 %215)
  %217 = xor i32 %214, %216
  %218 = load i32, i32* %12, align 4
  %219 = call i32 @TE44(i32 %218)
  %220 = xor i32 %217, %219
  %221 = load i32*, i32** %4, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  %223 = load i32, i32* %222, align 4
  %224 = xor i32 %220, %223
  store i32 %224, i32* %9, align 4
  %225 = load i32*, i32** %6, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 8
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @PUTU32(i32* %226, i32 %227)
  %229 = load i32, i32* %14, align 4
  %230 = call i32 @TE41(i32 %229)
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @TE42(i32 %231)
  %233 = xor i32 %230, %232
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @TE43(i32 %234)
  %236 = xor i32 %233, %235
  %237 = load i32, i32* %13, align 4
  %238 = call i32 @TE44(i32 %237)
  %239 = xor i32 %236, %238
  %240 = load i32*, i32** %4, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 3
  %242 = load i32, i32* %241, align 4
  %243 = xor i32 %239, %242
  store i32 %243, i32* %10, align 4
  %244 = load i32*, i32** %6, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 12
  %246 = load i32, i32* %10, align 4
  %247 = call i32 @PUTU32(i32* %245, i32 %246)
  ret void
}

declare dso_local i32 @GETU32(i32*) #1

declare dso_local i32 @TE0(...) #1

declare dso_local i32 @TE1(...) #1

declare dso_local i32 @TE2(...) #1

declare dso_local i32 @TE3(...) #1

declare dso_local i32 @TE41(i32) #1

declare dso_local i32 @TE42(i32) #1

declare dso_local i32 @TE43(i32) #1

declare dso_local i32 @TE44(i32) #1

declare dso_local i32 @PUTU32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
