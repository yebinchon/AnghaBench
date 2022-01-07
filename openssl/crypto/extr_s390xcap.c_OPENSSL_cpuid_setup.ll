; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_s390xcap.c_OPENSSL_cpuid_setup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_s390xcap.c_OPENSSL_cpuid_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.OPENSSL_s390xcap_st = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.sigaction = type { i32, i32 }

@OPENSSL_s390xcap_P = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ill_handler = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@ill_jmp = common dso_local global i32 0, align 4
@S390X_VX = common dso_local global i32 0, align 4
@S390X_VXD = common dso_local global i32 0, align 4
@S390X_VXE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"OPENSSL_s390xcap\00", align 1
@env = common dso_local global i32* null, align 8
@AT_HWCAP = common dso_local global i32 0, align 4
@HWCAP_S390_STFLE = common dso_local global i64 0, align 8
@HWCAP_S390_VX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OPENSSL_cpuid_setup() #0 {
  %1 = alloca %struct.OPENSSL_s390xcap_st, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.sigaction, align 4
  %4 = alloca %struct.sigaction, align 4
  %5 = alloca %struct.sigaction, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 0), align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %311

11:                                               ; preds = %0
  %12 = call i32 @S390X_CAPBIT(i32 0)
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 0), align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = call i32 @memset(%struct.sigaction* %3, i32 0, i32 8)
  %18 = load i32, i32* @ill_handler, align 4
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  %21 = call i32 @sigfillset(i32* %20)
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  %23 = load i32, i32* @SIGILL, align 4
  %24 = call i32 @sigdelset(i32* %22, i32 %23)
  %25 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  %26 = load i32, i32* @SIGFPE, align 4
  %27 = call i32 @sigdelset(i32* %25, i32 %26)
  %28 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  %29 = load i32, i32* @SIGTRAP, align 4
  %30 = call i32 @sigdelset(i32* %28, i32 %29)
  %31 = load i32, i32* @SIG_SETMASK, align 4
  %32 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  %33 = call i32 @sigprocmask(i32 %31, i32* %32, i32* %2)
  %34 = load i32, i32* @SIGILL, align 4
  %35 = call i32 @sigaction(i32 %34, %struct.sigaction* %3, %struct.sigaction* %4)
  %36 = load i32, i32* @SIGFPE, align 4
  %37 = call i32 @sigaction(i32 %36, %struct.sigaction* %3, %struct.sigaction* %5)
  %38 = load i32, i32* @ill_jmp, align 4
  %39 = call i64 @sigsetjmp(i32 %38, i32 1) #3
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %11
  %42 = call i32 (...) @OPENSSL_s390x_facilities()
  br label %43

43:                                               ; preds = %41, %11
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 0), align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @S390X_VX, align 4
  %48 = call i32 @S390X_CAPBIT(i32 %47)
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32, i32* @ill_jmp, align 4
  %53 = call i64 @sigsetjmp(i32 %52, i32 1) #3
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (...) @OPENSSL_vx_probe()
  br label %71

57:                                               ; preds = %51, %43
  %58 = load i32, i32* @S390X_VX, align 4
  %59 = call i32 @S390X_CAPBIT(i32 %58)
  %60 = load i32, i32* @S390X_VXD, align 4
  %61 = call i32 @S390X_CAPBIT(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32, i32* @S390X_VXE, align 4
  %64 = call i32 @S390X_CAPBIT(i32 %63)
  %65 = or i32 %62, %64
  %66 = xor i32 %65, -1
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 0), align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %57, %55
  %72 = load i32, i32* @SIGFPE, align 4
  %73 = call i32 @sigaction(i32 %72, %struct.sigaction* %5, %struct.sigaction* null)
  %74 = load i32, i32* @SIGILL, align 4
  %75 = call i32 @sigaction(i32 %74, %struct.sigaction* %4, %struct.sigaction* null)
  %76 = load i32, i32* @SIG_SETMASK, align 4
  %77 = call i32 @sigprocmask(i32 %76, i32* %2, i32* null)
  %78 = call i32* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %78, i32** @env, align 8
  %79 = load i32*, i32** @env, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = call i32 @parse_env(%struct.OPENSSL_s390xcap_st* %1)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  store i32* null, i32** @env, align 8
  br label %85

85:                                               ; preds = %84, %81
  br label %86

86:                                               ; preds = %85, %71
  %87 = load i32*, i32** @env, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %114

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 0), align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 0), align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 0), align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %89, %86
  %115 = call i32 (...) @OPENSSL_s390x_functions()
  %116 = load i32*, i32** @env, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %311

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 12
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 12), align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 12
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 12), align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 11
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 11), align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 11
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 11), align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 10
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 10), align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 10
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 10), align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 9
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 9), align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 9
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 9), align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 8
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 8), align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 8
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 8), align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 7
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 7), align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 7
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 7), align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 6
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 6), align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, %218
  store i32 %222, i32* %220, align 4
  %223 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 6
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 6), align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 5
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 5), align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %237, %234
  store i32 %238, i32* %236, align 4
  %239 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 5
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 5), align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, %242
  store i32 %246, i32* %244, align 4
  %247 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 4
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 4), align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, %250
  store i32 %254, i32* %252, align 4
  %255 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 4
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 4), align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 4
  %263 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 3
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 3), align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 3
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 3), align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, %274
  store i32 %278, i32* %276, align 4
  %279 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 2
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 2), align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = and i32 %285, %282
  store i32 %286, i32* %284, align 4
  %287 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 2), align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, %290
  store i32 %294, i32* %292, align 4
  %295 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 1), align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = load i32, i32* %300, align 4
  %302 = and i32 %301, %298
  store i32 %302, i32* %300, align 4
  %303 = getelementptr inbounds %struct.OPENSSL_s390xcap_st, %struct.OPENSSL_s390xcap_st* %1, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OPENSSL_s390xcap_P, i32 0, i32 1), align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 1
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, %306
  store i32 %310, i32* %308, align 4
  br label %311

311:                                              ; preds = %10, %118, %114
  ret void
}

declare dso_local i32 @S390X_CAPBIT(i32) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i32 @OPENSSL_s390x_facilities(...) #1

declare dso_local i32 @OPENSSL_vx_probe(...) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @parse_env(%struct.OPENSSL_s390xcap_st*) #1

declare dso_local i32 @OPENSSL_s390x_functions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
