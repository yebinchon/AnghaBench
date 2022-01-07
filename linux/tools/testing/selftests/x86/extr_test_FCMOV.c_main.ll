; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_FCMOV.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_FCMOV.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGILL = common dso_local global i32 0, align 4
@sighandler = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"[RUN]\09Testing fcmovCC instructions\0A\00", align 1
@CF = common dso_local global i32 0, align 4
@ZF = common dso_local global i32 0, align 4
@PF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"[OK]\09fcmovCC\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"[FAIL]\09fcmovCC errors: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @SIGILL, align 4
  %10 = load i32, i32* @sighandler, align 4
  %11 = call i32 @signal(i32 %9, i32 %10)
  %12 = load i32, i32* @SIGFPE, align 4
  %13 = load i32, i32* @sighandler, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  %15 = load i32, i32* @SIGSEGV, align 4
  %16 = load i32, i32* @sighandler, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %19 = call double @fcmovb(i32 0)
  %20 = fcmp oeq double %19, 1.000000e+00
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = call double @fcmovnb(i32 0)
  %26 = fcmp une double %25, 1.000000e+00
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = call double @fcmove(i32 0)
  %32 = fcmp oeq double %31, 1.000000e+00
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = call double @fcmovne(i32 0)
  %38 = fcmp une double %37, 1.000000e+00
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = call double @fcmovbe(i32 0)
  %44 = fcmp oeq double %43, 1.000000e+00
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = call double @fcmovnbe(i32 0)
  %50 = fcmp une double %49, 1.000000e+00
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = call double @fcmovu(i32 0)
  %56 = fcmp oeq double %55, 1.000000e+00
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = call double @fcmovnu(i32 0)
  %62 = fcmp une double %61, 1.000000e+00
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @CF, align 4
  %68 = call double @fcmovb(i32 %67)
  %69 = fcmp une double %68, 1.000000e+00
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @CF, align 4
  %75 = call double @fcmovnb(i32 %74)
  %76 = fcmp oeq double %75, 1.000000e+00
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @CF, align 4
  %82 = call double @fcmove(i32 %81)
  %83 = fcmp oeq double %82, 1.000000e+00
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* @CF, align 4
  %89 = call double @fcmovne(i32 %88)
  %90 = fcmp une double %89, 1.000000e+00
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @CF, align 4
  %96 = call double @fcmovbe(i32 %95)
  %97 = fcmp une double %96, 1.000000e+00
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* @CF, align 4
  %103 = call double @fcmovnbe(i32 %102)
  %104 = fcmp oeq double %103, 1.000000e+00
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @CF, align 4
  %110 = call double @fcmovu(i32 %109)
  %111 = fcmp oeq double %110, 1.000000e+00
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* @CF, align 4
  %117 = call double @fcmovnu(i32 %116)
  %118 = fcmp une double %117, 1.000000e+00
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* @ZF, align 4
  %124 = call double @fcmovb(i32 %123)
  %125 = fcmp oeq double %124, 1.000000e+00
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* @ZF, align 4
  %131 = call double @fcmovnb(i32 %130)
  %132 = fcmp une double %131, 1.000000e+00
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* @ZF, align 4
  %138 = call double @fcmove(i32 %137)
  %139 = fcmp une double %138, 1.000000e+00
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* @ZF, align 4
  %145 = call double @fcmovne(i32 %144)
  %146 = fcmp oeq double %145, 1.000000e+00
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* @ZF, align 4
  %152 = call double @fcmovbe(i32 %151)
  %153 = fcmp une double %152, 1.000000e+00
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %8, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* @ZF, align 4
  %159 = call double @fcmovnbe(i32 %158)
  %160 = fcmp oeq double %159, 1.000000e+00
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* @ZF, align 4
  %166 = call double @fcmovu(i32 %165)
  %167 = fcmp oeq double %166, 1.000000e+00
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* @ZF, align 4
  %173 = call double @fcmovnu(i32 %172)
  %174 = fcmp une double %173, 1.000000e+00
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %8, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* @PF, align 4
  %180 = call double @fcmovb(i32 %179)
  %181 = fcmp oeq double %180, 1.000000e+00
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %8, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* @PF, align 4
  %187 = call double @fcmovnb(i32 %186)
  %188 = fcmp une double %187, 1.000000e+00
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = load i32, i32* %8, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* @PF, align 4
  %194 = call double @fcmove(i32 %193)
  %195 = fcmp oeq double %194, 1.000000e+00
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %8, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* @PF, align 4
  %201 = call double @fcmovne(i32 %200)
  %202 = fcmp une double %201, 1.000000e+00
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %8, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* @PF, align 4
  %208 = call double @fcmovbe(i32 %207)
  %209 = fcmp oeq double %208, 1.000000e+00
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* %8, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %8, align 4
  %214 = load i32, i32* @PF, align 4
  %215 = call double @fcmovnbe(i32 %214)
  %216 = fcmp une double %215, 1.000000e+00
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  %219 = load i32, i32* %8, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* @PF, align 4
  %222 = call double @fcmovu(i32 %221)
  %223 = fcmp une double %222, 1.000000e+00
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %8, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* @PF, align 4
  %229 = call double @fcmovnu(i32 %228)
  %230 = fcmp oeq double %229, 1.000000e+00
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = load i32, i32* %8, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %8, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %3
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %242

239:                                              ; preds = %3
  %240 = load i32, i32* %8, align 4
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %240)
  br label %242

242:                                              ; preds = %239, %237
  %243 = load i32, i32* %8, align 4
  ret i32 %243
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local double @fcmovb(i32) #1

declare dso_local double @fcmovnb(i32) #1

declare dso_local double @fcmove(i32) #1

declare dso_local double @fcmovne(i32) #1

declare dso_local double @fcmovbe(i32) #1

declare dso_local double @fcmovnbe(i32) #1

declare dso_local double @fcmovu(i32) #1

declare dso_local double @fcmovnu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
