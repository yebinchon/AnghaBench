; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_test_valid_sigreturn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sigreturn.c_test_valid_sigreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selectors = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"[SKIP]\09Code segment unavailable for %d-bit CS, %d-bit SS\0A\00", align 1
@sig_ss = common dso_local global i32 0, align 4
@data16_sel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"[SKIP]\09Data segment unavailable for %d-bit CS, 16-bit SS\0A\00", align 1
@sig_cs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"[RUN]\09Valid sigreturn: %d-bit CS (%hx), %d-bit SS (%hx%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c", GDT\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@nerrs = common dso_local global i64 0, align 8
@NGREG = common dso_local global i32 0, align 4
@requested_regs = common dso_local global i32* null, align 8
@resulting_regs = common dso_local global i32* null, align 8
@REG_TRAPNO = common dso_local global i32 0, align 4
@REG_IP = common dso_local global i32 0, align 4
@REG_SP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"[NOTE]\09SP: %llx -> %llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"[FAIL]\09SP mismatch: requested 0x%llx; got 0x%llx\0A\00", align 1
@REG_CSGSFS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"[FAIL]\09CS mismatch: requested 0x%hx; got 0x%hx\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"[FAIL]\09SS mismatch: requested 0x%hx; got 0x%hx\0A\00", align 1
@REG_CX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [61 x i8] c"[FAIL]\09CX (saved SP) mismatch: requested 0x%llx; got 0x%llx\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"[FAIL]\09Reg %d mismatch: requested 0x%llx; got 0x%llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"[OK]\09all registers okay\0A\00", align 1
@REG_UESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @test_valid_sigreturn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_valid_sigreturn(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.selectors*, align 8
  %14 = alloca %struct.selectors*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @find_cs(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 16, i32 32
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24)
  store i32 0, i32* %4, align 4
  br label %221

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* @sig_ss, align 4
  br label %45

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* @data16_sel, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 0, i32* %4, align 4
  br label %221

40:                                               ; preds = %34
  %41 = load i32, i32* @data16_sel, align 4
  store i32 %41, i32* @sig_ss, align 4
  br label %44

42:                                               ; preds = %31
  %43 = call i32 asm sideeffect "mov %ss,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %43, i32* @sig_ss, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* @sig_cs, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @sig_cs, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 16, i32 32
  %53 = load i32, i32* @sig_ss, align 4
  %54 = load i32, i32* @sig_ss, align 4
  %55 = and i32 %54, 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48, i32 %52, i32 %53, i8* %58)
  %60 = load i32, i32* @SIGUSR1, align 4
  %61 = call i32 @raise(i32 %60)
  store i64 0, i64* @nerrs, align 8
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %210, %45
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @NGREG, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %213

66:                                               ; preds = %62
  %67 = load i32*, i32** @requested_regs, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i32*, i32** @resulting_regs, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @REG_TRAPNO, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @REG_IP, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %66
  br label %210

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @REG_SP, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %210

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 64
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = xor i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %104, i64 %106)
  br label %210

108:                                              ; preds = %97, %94
  %109 = load i32*, i32** @requested_regs, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32*, i32** @resulting_regs, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i64 %114, i64 %120)
  %122 = load i64, i64* @nerrs, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* @nerrs, align 8
  br label %210

124:                                              ; preds = %85
  store i32 0, i32* %12, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @REG_CSGSFS, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %177

128:                                              ; preds = %124
  %129 = load i32*, i32** @requested_regs, align 8
  %130 = load i32, i32* @REG_CSGSFS, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = bitcast i32* %132 to i8*
  %134 = bitcast i8* %133 to %struct.selectors*
  store %struct.selectors* %134, %struct.selectors** %13, align 8
  %135 = load i32*, i32** @resulting_regs, align 8
  %136 = load i32, i32* @REG_CSGSFS, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = bitcast i32* %138 to i8*
  %140 = bitcast i8* %139 to %struct.selectors*
  store %struct.selectors* %140, %struct.selectors** %14, align 8
  %141 = load %struct.selectors*, %struct.selectors** %13, align 8
  %142 = getelementptr inbounds %struct.selectors, %struct.selectors* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.selectors*, %struct.selectors** %14, align 8
  %145 = getelementptr inbounds %struct.selectors, %struct.selectors* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %143, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %128
  %149 = load %struct.selectors*, %struct.selectors** %13, align 8
  %150 = getelementptr inbounds %struct.selectors, %struct.selectors* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.selectors*, %struct.selectors** %14, align 8
  %153 = getelementptr inbounds %struct.selectors, %struct.selectors* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %151, i32 %154)
  %156 = load i64, i64* @nerrs, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* @nerrs, align 8
  br label %158

158:                                              ; preds = %148, %128
  %159 = load %struct.selectors*, %struct.selectors** %13, align 8
  %160 = getelementptr inbounds %struct.selectors, %struct.selectors* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.selectors*, %struct.selectors** %14, align 8
  %163 = getelementptr inbounds %struct.selectors, %struct.selectors* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %161, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %158
  %167 = load %struct.selectors*, %struct.selectors** %13, align 8
  %168 = getelementptr inbounds %struct.selectors, %struct.selectors* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.selectors*, %struct.selectors** %14, align 8
  %171 = getelementptr inbounds %struct.selectors, %struct.selectors* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %169, i32 %172)
  %174 = load i64, i64* @nerrs, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* @nerrs, align 8
  br label %176

176:                                              ; preds = %166, %158
  br label %210

177:                                              ; preds = %124
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* @REG_CX, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %193

181:                                              ; preds = %177
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %181
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i64 %187, i64 %189)
  %191 = load i64, i64* @nerrs, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* @nerrs, align 8
  br label %210

193:                                              ; preds = %181, %177
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %193
  %198 = load i32, i32* %12, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 %201, i64 %203, i64 %205)
  %207 = load i64, i64* @nerrs, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* @nerrs, align 8
  br label %209

209:                                              ; preds = %200, %197, %193
  br label %210

210:                                              ; preds = %209, %185, %176, %108, %102, %93, %84
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %9, align 4
  br label %62

213:                                              ; preds = %62
  %214 = load i64, i64* @nerrs, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %213
  %219 = load i64, i64* @nerrs, align 8
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %218, %37, %19
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @find_cs(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1044}
