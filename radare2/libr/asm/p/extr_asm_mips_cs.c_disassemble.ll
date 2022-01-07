; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_mips_cs.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_mips_cs.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, i64*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64*, i32 }

@CS_MODE_BIG_ENDIAN = common dso_local global i32 0, align 4
@CS_MODE_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"micro\00", align 1
@CS_MODE_MICRO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"r6\00", align 1
@CS_MODE_MIPS32R6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@CS_MODE_MIPS3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"v2\00", align 1
@CS_MODE_MIPS64 = common dso_local global i32 0, align 4
@CS_MODE_MIPS32 = common dso_local global i32 0, align 4
@cd = common dso_local global i64 0, align 8
@CS_ARCH_MIPS = common dso_local global i32 0, align 4
@R_ASM_SYNTAX_REGNUM = common dso_local global i64 0, align 8
@CS_OPT_SYNTAX = common dso_local global i32 0, align 4
@CS_OPT_SYNTAX_NOREGNAME = common dso_local global i32 0, align 4
@CS_OPT_SYNTAX_DEFAULT = common dso_local global i32 0, align 4
@CS_OPT_DETAIL = common dso_local global i32 0, align 4
@CS_OPT_OFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CS_MODE_MIPS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %13, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @CS_MODE_BIG_ENDIAN, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @CS_MODE_LITTLE_ENDIAN, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %189

28:                                               ; preds = %23
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %80

33:                                               ; preds = %28
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %33
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 @strcmp(i64* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @CS_MODE_MICRO, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %79

49:                                               ; preds = %39
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @strcmp(i64* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @CS_MODE_MIPS32R6, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %78

59:                                               ; preds = %49
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = load i64*, i64** %61, align 8
  %63 = call i32 @strcmp(i64* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @CS_MODE_MIPS3, align 4
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %77

69:                                               ; preds = %59
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = load i64*, i64** %71, align 8
  %73 = call i32 @strcmp(i64* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %69
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %55
  br label %79

79:                                               ; preds = %78, %45
  br label %80

80:                                               ; preds = %79, %33, %28
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 64
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @CS_MODE_MIPS64, align 4
  br label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @CS_MODE_MIPS32, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = call i32 @memset(%struct.TYPE_11__* %93, i32 0, i32 4)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i32 4, i32* %96, align 4
  %97 = load i64, i64* @cd, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = call i32 @cs_close(i64* @cd)
  br label %101

101:                                              ; preds = %99, %89
  %102 = load i32, i32* @CS_ARCH_MIPS, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @cs_open(i32 %102, i32 %103, i64* @cd)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %185

108:                                              ; preds = %101
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @R_ASM_SYNTAX_REGNUM, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load i64, i64* @cd, align 8
  %116 = load i32, i32* @CS_OPT_SYNTAX, align 4
  %117 = load i32, i32* @CS_OPT_SYNTAX_NOREGNAME, align 4
  %118 = call i32 @cs_option(i64 %115, i32 %116, i32 %117)
  br label %124

119:                                              ; preds = %108
  %120 = load i64, i64* @cd, align 8
  %121 = load i32, i32* @CS_OPT_SYNTAX, align 4
  %122 = load i32, i32* @CS_OPT_SYNTAX_DEFAULT, align 4
  %123 = call i32 @cs_option(i64 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %114
  %125 = load i64, i64* @cd, align 8
  %126 = load i32, i32* @CS_OPT_DETAIL, align 4
  %127 = load i32, i32* @CS_OPT_OFF, align 4
  %128 = call i32 @cs_option(i64 %125, i32 %126, i32 %127)
  %129 = load i64, i64* @cd, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @cs_disasm(i64 %129, i32* %130, i32 %131, i32 %134, i32 1, %struct.TYPE_10__** %10)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 1
  br i1 %137, label %138, label %143

138:                                              ; preds = %124
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = call i32 @r_asm_op_set_asm(%struct.TYPE_11__* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i32 4, i32* %142, align 4
  br label %184

143:                                              ; preds = %124
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %146, 1
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %184

149:                                              ; preds = %143
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i64*, i64** %167, align 8
  %169 = call i8* @r_str_newf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %157, i8* %165, i64* %168)
  store i8* %169, i8** %14, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %149
  %173 = load i8*, i8** %14, align 8
  %174 = call i32 @r_str_replace_char(i8* %173, i8 signext 36, i32 0)
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %176 = load i8*, i8** %14, align 8
  %177 = call i32 @r_asm_op_set_asm(%struct.TYPE_11__* %175, i8* %176)
  %178 = load i8*, i8** %14, align 8
  %179 = call i32 @free(i8* %178)
  br label %180

180:                                              ; preds = %172, %149
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @cs_free(%struct.TYPE_10__* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %148, %138
  br label %185

185:                                              ; preds = %184, %107
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %185, %27
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @strcmp(i64*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @cs_close(i64*) #1

declare dso_local i32 @cs_open(i32, i32, i64*) #1

declare dso_local i32 @cs_option(i64, i32, i32) #1

declare dso_local i32 @cs_disasm(i64, i32*, i32, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @r_asm_op_set_asm(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @r_str_newf(i8*, i32, i8*, i64*) #1

declare dso_local i32 @r_str_replace_char(i8*, i8 signext, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cs_free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
