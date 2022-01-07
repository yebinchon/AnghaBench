; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_arm_as.c_assemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_arm_as.c_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"r_as\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ARM_AS\00", align 1
@ARM64_AS = common dso_local global i32 0, align 4
@ARM32_AS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c".thumb\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s\0A.ascii \22BEGINMARK\22\0A%s\0A.ascii \22ENDMARK\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s %s -o %s\00", align 1
@O_BINARY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"BEGINMARK\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ENDMARK\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Cannot find water marks\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Error running: %s %s -o %s\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"export PATH=~/NDK/toolchains/arm-linux*/prebuilt/darwin-arm_64/bin\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i8*)* @assemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assemble(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [4096 x i32], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* null, i8** %11, align 8
  %19 = call i32 @r_file_mkstemp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %157

23:                                               ; preds = %3
  %24 = call i32 @r_file_mkstemp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @free(i8* %28)
  store i32 -1, i32* %4, align 4
  br label %157

30:                                               ; preds = %23
  %31 = call i8* @r_sys_getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** %11, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %34, %30
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 64
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @ARM64_AS, align 4
  %47 = call i8* @strdup(i32 %46)
  store i8* %47, i8** %11, align 8
  br label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @ARM32_AS, align 4
  %50 = call i8* @strdup(i32 %49)
  store i8* %50, i8** %11, align 8
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i8* @r_str_newf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %59, i8* %60)
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load i32, i32* %12, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = call i32 @write(i32 %65, i8* %66, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @close(i32 %70)
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @free(i8* %72)
  br label %74

74:                                               ; preds = %64, %58
  store i32 0, i32* %15, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @r_sys_cmdf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %75, i8* %76, i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %135, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @close(i32 %81)
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* @O_BINARY, align 4
  %85 = load i32, i32* @O_RDONLY, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @r_sandbox_open(i8* %83, i32 %86, i32 420)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @free(i8* %95)
  store i32 -1, i32* %4, align 4
  br label %157

97:                                               ; preds = %80
  %98 = load i32, i32* %13, align 4
  %99 = getelementptr inbounds [4096 x i32], [4096 x i32]* %18, i64 0, i64 0
  %100 = call i32 @read(i32 %98, i32* %99, i32 16384)
  store i32 %100, i32* %15, align 4
  %101 = getelementptr inbounds [4096 x i32], [4096 x i32]* %18, i64 0, i64 0
  %102 = load i32, i32* %15, align 4
  %103 = call i32* @r_mem_mem(i32* %101, i32 %102, i32* bitcast ([10 x i8]* @.str.6 to i32*), i32 9)
  store i32* %103, i32** %16, align 8
  %104 = getelementptr inbounds [4096 x i32], [4096 x i32]* %18, i64 0, i64 0
  %105 = load i32, i32* %15, align 4
  %106 = call i32* @r_mem_mem(i32* %104, i32 %105, i32* bitcast ([8 x i8]* @.str.7 to i32*), i32 7)
  store i32* %106, i32** %17, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load i32*, i32** %17, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %109, %97
  %113 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %134

114:                                              ; preds = %109
  %115 = load i32*, i32** %17, align 8
  %116 = load i32*, i32** %16, align 8
  %117 = ptrtoint i32* %115 to i64
  %118 = ptrtoint i32* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 4
  %121 = sub nsw i64 %120, 9
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %114
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32*, i32** %16, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 9
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @r_strbuf_setbin(i32* %127, i32* %129, i32 %130)
  br label %133

132:                                              ; preds = %114
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %132, %125
  br label %134

134:                                              ; preds = %133, %112
  br label %141

135:                                              ; preds = %74
  %136 = load i8*, i8** %11, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %136, i8* %137, i8* %138)
  %140 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0))
  br label %141

141:                                              ; preds = %135, %134
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @close(i32 %142)
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 @unlink(i8* %144)
  %146 = load i8*, i8** %10, align 8
  %147 = call i32 @unlink(i8* %146)
  %148 = load i8*, i8** %9, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i8*, i8** %11, align 8
  %153 = call i32 @free(i8* %152)
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  store i32 %154, i32* %4, align 4
  br label %157

157:                                              ; preds = %141, %90, %27, %22
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @r_file_mkstemp(i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_sys_getenv(i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @r_sys_cmdf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @r_sandbox_open(i8*, i32, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32* @r_mem_mem(i32*, i32, i32*, i32) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_strbuf_setbin(i32*, i32*, i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
