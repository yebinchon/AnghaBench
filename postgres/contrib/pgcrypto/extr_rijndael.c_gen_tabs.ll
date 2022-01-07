; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_rijndael.c_gen_tabs.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_rijndael.c_gen_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pow_tab = common dso_local global i64* null, align 8
@log_tab = common dso_local global i32* null, align 8
@rco_tab = common dso_local global i64* null, align 8
@sbx_tab = common dso_local global i64* null, align 8
@isb_tab = common dso_local global i64* null, align 8
@ft_tab = common dso_local global i32** null, align 8
@it_tab = common dso_local global i32** null, align 8
@tab_gen = common dso_local global i32 0, align 4
@fl_tab = common dso_local global i32** null, align 8
@il_tab = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gen_tabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_tabs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 1, i64* %3, align 8
  br label %5

5:                                                ; preds = %31, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %34

8:                                                ; preds = %5
  %9 = load i64, i64* %3, align 8
  %10 = load i64*, i64** @pow_tab, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  store i64 %9, i64* %13, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = trunc i64 %15 to i32
  %17 = load i32*, i32** @log_tab, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 %16, i32* %19, align 4
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = shl i64 %21, 1
  %23 = xor i64 %20, %22
  %24 = load i64, i64* %3, align 8
  %25 = and i64 %24, 128
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 27, i32 0
  %29 = sext i32 %28 to i64
  %30 = xor i64 %23, %29
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %8
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %5

34:                                               ; preds = %5
  %35 = load i32*, i32** @log_tab, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 0, i32* %36, align 4
  store i64 1, i64* %3, align 8
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %55, %34
  %38 = load i32, i32* %1, align 4
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i64, i64* %3, align 8
  %42 = load i64*, i64** @rco_tab, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %41, i64* %45, align 8
  %46 = load i64, i64* %3, align 8
  %47 = shl i64 %46, 1
  %48 = load i64, i64* %3, align 8
  %49 = and i64 %48, 128
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 27, i32 0
  %53 = sext i32 %52 to i64
  %54 = xor i64 %47, %53
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %37

58:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %123, %58
  %60 = load i32, i32* %1, align 4
  %61 = icmp slt i32 %60, 256
  br i1 %61, label %62, label %126

62:                                               ; preds = %59
  %63 = load i32, i32* %1, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i64*, i64** @pow_tab, align 8
  %67 = load i32*, i32** @log_tab, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 255, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %66, i64 %73
  %75 = load i64, i64* %74, align 8
  br label %77

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %65
  %78 = phi i64 [ %75, %65 ], [ 0, %76 ]
  store i64 %78, i64* %3, align 8
  %79 = load i64, i64* %3, align 8
  store i64 %79, i64* %4, align 8
  %80 = load i64, i64* %4, align 8
  %81 = lshr i64 %80, 7
  %82 = load i64, i64* %4, align 8
  %83 = shl i64 %82, 1
  %84 = or i64 %81, %83
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* %3, align 8
  %87 = xor i64 %86, %85
  store i64 %87, i64* %3, align 8
  %88 = load i64, i64* %4, align 8
  %89 = lshr i64 %88, 7
  %90 = load i64, i64* %4, align 8
  %91 = shl i64 %90, 1
  %92 = or i64 %89, %91
  store i64 %92, i64* %4, align 8
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* %3, align 8
  %95 = xor i64 %94, %93
  store i64 %95, i64* %3, align 8
  %96 = load i64, i64* %4, align 8
  %97 = lshr i64 %96, 7
  %98 = load i64, i64* %4, align 8
  %99 = shl i64 %98, 1
  %100 = or i64 %97, %99
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* %3, align 8
  %103 = xor i64 %102, %101
  store i64 %103, i64* %3, align 8
  %104 = load i64, i64* %4, align 8
  %105 = lshr i64 %104, 7
  %106 = load i64, i64* %4, align 8
  %107 = shl i64 %106, 1
  %108 = or i64 %105, %107
  store i64 %108, i64* %4, align 8
  %109 = load i64, i64* %4, align 8
  %110 = xor i64 %109, 99
  %111 = load i64, i64* %3, align 8
  %112 = xor i64 %111, %110
  store i64 %112, i64* %3, align 8
  %113 = load i64, i64* %3, align 8
  %114 = load i64*, i64** @sbx_tab, align 8
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 %113, i64* %117, align 8
  %118 = load i32, i32* %1, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64*, i64** @isb_tab, align 8
  %121 = load i64, i64* %3, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  store i64 %119, i64* %122, align 8
  br label %123

123:                                              ; preds = %77
  %124 = load i32, i32* %1, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %1, align 4
  br label %59

126:                                              ; preds = %59
  store i32 0, i32* %1, align 4
  br label %127

127:                                              ; preds = %243, %126
  %128 = load i32, i32* %1, align 4
  %129 = icmp slt i32 %128, 256
  br i1 %129, label %130, label %246

130:                                              ; preds = %127
  %131 = load i64*, i64** @sbx_tab, align 8
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %3, align 8
  %136 = load i64, i64* %3, align 8
  %137 = call i64 @ff_mult(i32 2, i64 %136)
  %138 = trunc i64 %137 to i32
  %139 = load i64, i64* %3, align 8
  %140 = trunc i64 %139 to i32
  %141 = shl i32 %140, 8
  %142 = or i32 %138, %141
  %143 = load i64, i64* %3, align 8
  %144 = trunc i64 %143 to i32
  %145 = shl i32 %144, 16
  %146 = or i32 %142, %145
  %147 = load i64, i64* %3, align 8
  %148 = call i64 @ff_mult(i32 3, i64 %147)
  %149 = trunc i64 %148 to i32
  %150 = shl i32 %149, 24
  %151 = or i32 %146, %150
  store i32 %151, i32* %2, align 4
  %152 = load i32, i32* %2, align 4
  %153 = load i32**, i32*** @ft_tab, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load i32, i32* %2, align 4
  %160 = call i8* @rotl(i32 %159, i32 8)
  %161 = ptrtoint i8* %160 to i32
  %162 = load i32**, i32*** @ft_tab, align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %1, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %161, i32* %167, align 4
  %168 = load i32, i32* %2, align 4
  %169 = call i8* @rotl(i32 %168, i32 16)
  %170 = ptrtoint i8* %169 to i32
  %171 = load i32**, i32*** @ft_tab, align 8
  %172 = getelementptr inbounds i32*, i32** %171, i64 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %1, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %170, i32* %176, align 4
  %177 = load i32, i32* %2, align 4
  %178 = call i8* @rotl(i32 %177, i32 24)
  %179 = ptrtoint i8* %178 to i32
  %180 = load i32**, i32*** @ft_tab, align 8
  %181 = getelementptr inbounds i32*, i32** %180, i64 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %1, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  %186 = load i64*, i64** @isb_tab, align 8
  %187 = load i32, i32* %1, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %3, align 8
  %191 = load i64, i64* %3, align 8
  %192 = call i64 @ff_mult(i32 14, i64 %191)
  %193 = trunc i64 %192 to i32
  %194 = load i64, i64* %3, align 8
  %195 = call i64 @ff_mult(i32 9, i64 %194)
  %196 = trunc i64 %195 to i32
  %197 = shl i32 %196, 8
  %198 = or i32 %193, %197
  %199 = load i64, i64* %3, align 8
  %200 = call i64 @ff_mult(i32 13, i64 %199)
  %201 = trunc i64 %200 to i32
  %202 = shl i32 %201, 16
  %203 = or i32 %198, %202
  %204 = load i64, i64* %3, align 8
  %205 = call i64 @ff_mult(i32 11, i64 %204)
  %206 = trunc i64 %205 to i32
  %207 = shl i32 %206, 24
  %208 = or i32 %203, %207
  store i32 %208, i32* %2, align 4
  %209 = load i32, i32* %2, align 4
  %210 = load i32**, i32*** @it_tab, align 8
  %211 = getelementptr inbounds i32*, i32** %210, i64 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %1, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %209, i32* %215, align 4
  %216 = load i32, i32* %2, align 4
  %217 = call i8* @rotl(i32 %216, i32 8)
  %218 = ptrtoint i8* %217 to i32
  %219 = load i32**, i32*** @it_tab, align 8
  %220 = getelementptr inbounds i32*, i32** %219, i64 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %1, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %218, i32* %224, align 4
  %225 = load i32, i32* %2, align 4
  %226 = call i8* @rotl(i32 %225, i32 16)
  %227 = ptrtoint i8* %226 to i32
  %228 = load i32**, i32*** @it_tab, align 8
  %229 = getelementptr inbounds i32*, i32** %228, i64 2
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %1, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 %227, i32* %233, align 4
  %234 = load i32, i32* %2, align 4
  %235 = call i8* @rotl(i32 %234, i32 24)
  %236 = ptrtoint i8* %235 to i32
  %237 = load i32**, i32*** @it_tab, align 8
  %238 = getelementptr inbounds i32*, i32** %237, i64 3
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %1, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32 %236, i32* %242, align 4
  br label %243

243:                                              ; preds = %130
  %244 = load i32, i32* %1, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %1, align 4
  br label %127

246:                                              ; preds = %127
  store i32 1, i32* @tab_gen, align 4
  ret void
}

declare dso_local i64 @ff_mult(i32, i64) #1

declare dso_local i8* @rotl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
