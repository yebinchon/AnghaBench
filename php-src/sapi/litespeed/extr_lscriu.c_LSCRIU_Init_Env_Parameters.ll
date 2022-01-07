; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_Init_Env_Parameters.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_Init_Env_Parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"LSAPI_INITIAL_START\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"LSAPI_BACKEND_INITIAL_START\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"LSCRIU (%d): Set start requests based on environment (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"LSCRIU (%d): LSAPI_INITIAL_START set to 0 disabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"LSCRIU (%d): LSAPI_INITIAL_START NOT set - disabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"LSCRIU (%d): Listening...\0A\00", align 1
@CRIU_GCOUNTER_SHM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"LSAPI_CRIU_USE_SHM\00", align 1
@CRIU_GCOUNTER_SIG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"LSAPI_SIGNALS\00", align 1
@CRIU_GCOUNTER_PIPE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"LSCRIU (%d): Use %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@SIGUSR2 = common dso_local global i32 0, align 4
@lsapi_siguser2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"LSCRIU (%d): Use shared memory\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"LSCRIU (%d): NOT Listening\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"LSAPI_CRIU\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"LSCRIU (%d): Disabled by environment.\0A\00", align 1
@s_native = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @LSCRIU_Init_Env_Parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LSCRIU_Init_Env_Parameters() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i8* @getenv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i8*, i8** %2, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @atoi(i8* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = call i32 (...) @getpid()
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i8*, i32, ...) @lscriu_dbg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @LSCRIU_Set_Initial_Start_Reqs(i32 %24)
  br label %29

26:                                               ; preds = %15
  %27 = call i32 (...) @getpid()
  %28 = call i32 (i8*, i32, ...) @lscriu_dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  store i32 0, i32* %1, align 4
  br label %173

29:                                               ; preds = %20
  br label %33

30:                                               ; preds = %12
  %31 = call i32 (...) @getpid()
  %32 = call i32 (i8*, i32, ...) @lscriu_dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  store i32 0, i32* %1, align 4
  br label %173

33:                                               ; preds = %29
  %34 = call i64 (...) @LSAPI_Is_Listen()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %138

36:                                               ; preds = %33
  %37 = call i32 (...) @getpid()
  %38 = call i32 (i8*, i32, ...) @lscriu_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* @CRIU_GCOUNTER_SHM, align 8
  store i64 %39, i64* %4, align 8
  %40 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i8* %40, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 83
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 115
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %42
  %53 = load i64, i64* @CRIU_GCOUNTER_SIG, align 8
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %52, %47
  br label %117

55:                                               ; preds = %36
  %56 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i8* %56, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %116

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 49
  br i1 %62, label %105, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 89
  br i1 %67, label %105, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 121
  br i1 %72, label %105, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 84
  br i1 %77, label %105, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 116
  br i1 %82, label %105, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 79
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 111
  br i1 %92, label %93, label %107

93:                                               ; preds = %88, %83
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 78
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 110
  br i1 %104, label %105, label %107

105:                                              ; preds = %99, %93, %78, %73, %68, %63, %58
  %106 = load i64, i64* @CRIU_GCOUNTER_SIG, align 8
  store i64 %106, i64* %4, align 8
  br label %115

107:                                              ; preds = %99, %88
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i64, i64* @CRIU_GCOUNTER_PIPE, align 8
  store i64 %113, i64* %4, align 8
  br label %114

114:                                              ; preds = %112, %107
  br label %115

115:                                              ; preds = %114, %105
  br label %116

116:                                              ; preds = %115, %55
  br label %117

117:                                              ; preds = %116, %54
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* @CRIU_GCOUNTER_SHM, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = call i32 (...) @getpid()
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* @CRIU_GCOUNTER_SIG, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %128 = call i32 (i8*, i32, ...) @lscriu_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %122, i8* %127)
  %129 = load i32, i32* @SIGUSR2, align 4
  %130 = load i32, i32* @lsapi_siguser2, align 4
  %131 = call i32 @lsapi_criu_signal(i32 %129, i32 %130)
  br label %135

132:                                              ; preds = %117
  %133 = call i32 (...) @getpid()
  %134 = call i32 (i8*, i32, ...) @lscriu_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %132, %121
  %136 = load i64, i64* %4, align 8
  %137 = call i32 @LSCRIU_Set_Global_Counter_Type(i64 %136)
  br label %141

138:                                              ; preds = %33
  %139 = call i32 (...) @getpid()
  %140 = call i32 (i8*, i32, ...) @lscriu_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %138, %135
  store i8* null, i8** %6, align 8
  %142 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  store i8* %142, i8** %6, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %164

145:                                              ; preds = %141
  %146 = load i8*, i8** %6, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 48
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = call i32 (...) @getpid()
  %152 = call i32 (i8*, i32, ...) @lscriu_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32 %151)
  %153 = call i32 @LSCRIU_Set_Initial_Start_Reqs(i32 0)
  br label %163

154:                                              ; preds = %145
  %155 = load i8*, i8** %6, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 50
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = call i32 (...) @getpid()
  %161 = call i32 (i8*, i32, ...) @lscriu_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32 %160)
  store i32 1, i32* @s_native, align 4
  br label %162

162:                                              ; preds = %159, %154
  br label %163

163:                                              ; preds = %162, %150
  br label %164

164:                                              ; preds = %163, %141
  %165 = load i32, i32* @s_native, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = call i32 (...) @init_native_env()
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = call i32 @LSCRIU_Set_Initial_Start_Reqs(i32 0)
  br label %172

172:                                              ; preds = %170, %167, %164
  store i32 0, i32* %1, align 4
  br label %173

173:                                              ; preds = %172, %30, %26
  %174 = load i32, i32* %1, align 4
  ret i32 %174
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @lscriu_dbg(i8*, i32, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @LSCRIU_Set_Initial_Start_Reqs(i32) #1

declare dso_local i64 @LSAPI_Is_Listen(...) #1

declare dso_local i32 @lsapi_criu_signal(i32, i32) #1

declare dso_local i32 @LSCRIU_Set_Global_Counter_Type(i64) #1

declare dso_local i32 @init_native_env(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
