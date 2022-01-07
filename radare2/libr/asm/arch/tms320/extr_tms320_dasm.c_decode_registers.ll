; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_decode_registers.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_decode_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@r = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TRNx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"trn%d\00", align 1
@ss = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"t%d\00", align 1
@dd = common dso_local global i32 0, align 4
@vv = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"BitIn\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"BitOut\00", align 1
@t = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"TCx\00", align 1
@tt = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"TCy\00", align 1
@XSSS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"xsrc\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"XAsrc\00", align 1
@XDDD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"xdst\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"XAdst\00", align 1
@FSSS = common dso_local global i32 0, align 4
@FDDD = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"[src,] dst\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"src, dst\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"src1\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"src2\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"dst1\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"dst2\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"TAx\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"TAy\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@XACS = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [7 x i8] c"XACsrc\00", align 1
@XACD = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"XACdst\00", align 1
@SS = common dso_local global i32 0, align 4
@SS2 = common dso_local global i32 0, align 4
@DD = common dso_local global i32 0, align 4
@DD2 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"ACx\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"ac%d\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"ACy\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"[, ACy]\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"[ACx,] ACy\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c", ACy\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"ACx, ACy\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"ACz\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"ACw\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_registers(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = load i32, i32* @r, align 4
  %6 = call i64 @field_valid(%struct.TYPE_5__* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = load i32, i32* @r, align 4
  %14 = call i32 @field_value(%struct.TYPE_5__* %12, i32 %13)
  %15 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = load i32, i32* @ss, align 4
  %19 = call i64 @field_valid(%struct.TYPE_5__* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = load i32, i32* @ss, align 4
  %27 = call i32 @field_value(%struct.TYPE_5__* %25, i32 %26)
  %28 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = load i32, i32* @dd, align 4
  %32 = call i64 @field_valid(%struct.TYPE_5__* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = load i32, i32* @dd, align 4
  %40 = call i32 @field_value(%struct.TYPE_5__* %38, i32 %39)
  %41 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = load i32, i32* @vv, align 4
  %45 = call i64 @field_valid(%struct.TYPE_5__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = load i32, i32* @vv, align 4
  %53 = call i32 @field_value(%struct.TYPE_5__* %51, i32 %52)
  %54 = ashr i32 %53, 1
  %55 = call i32 @get_v_str(i32 %54, i32* null)
  %56 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = load i32, i32* @vv, align 4
  %62 = call i32 @field_value(%struct.TYPE_5__* %60, i32 %61)
  %63 = ashr i32 %62, 0
  %64 = call i32 @get_v_str(i32 %63, i32* null)
  %65 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %47, %42
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = load i32, i32* @t, align 4
  %69 = call i64 @field_valid(%struct.TYPE_5__* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = load i32, i32* @t, align 4
  %77 = call i32 @field_value(%struct.TYPE_5__* %75, i32 %76)
  %78 = call i32 @get_t_str(i32 %77, i32* null)
  %79 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %71, %66
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %82 = load i32, i32* @tt, align 4
  %83 = call i64 @field_valid(%struct.TYPE_5__* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %80
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = load i32, i32* @tt, align 4
  %91 = call i32 @field_value(%struct.TYPE_5__* %89, i32 %90)
  %92 = ashr i32 %91, 0
  %93 = call i32 @get_t_str(i32 %92, i32* null)
  %94 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = load i32, i32* @tt, align 4
  %100 = call i32 @field_value(%struct.TYPE_5__* %98, i32 %99)
  %101 = ashr i32 %100, 1
  %102 = call i32 @get_t_str(i32 %101, i32* null)
  %103 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %85, %80
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = load i32, i32* @XSSS, align 4
  %107 = call i64 @field_valid(%struct.TYPE_5__* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %114 = load i32, i32* @XSSS, align 4
  %115 = call i32 @field_value(%struct.TYPE_5__* %113, i32 %114)
  %116 = call i32 @get_xreg_str(i32 %115, i32* null)
  %117 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = load i32, i32* @XSSS, align 4
  %123 = call i32 @field_value(%struct.TYPE_5__* %121, i32 %122)
  %124 = call i32 @get_xreg_str(i32 %123, i32* null)
  %125 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %109, %104
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %128 = load i32, i32* @XDDD, align 4
  %129 = call i64 @field_valid(%struct.TYPE_5__* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %126
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %136 = load i32, i32* @XDDD, align 4
  %137 = call i32 @field_value(%struct.TYPE_5__* %135, i32 %136)
  %138 = call i32 @get_xreg_str(i32 %137, i32* null)
  %139 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %144 = load i32, i32* @XDDD, align 4
  %145 = call i32 @field_value(%struct.TYPE_5__* %143, i32 %144)
  %146 = call i32 @get_xreg_str(i32 %145, i32* null)
  %147 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %131, %126
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %150 = load i32, i32* @FSSS, align 4
  %151 = call i64 @field_valid(%struct.TYPE_5__* %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %148
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %155 = load i32, i32* @FDDD, align 4
  %156 = call i64 @field_valid(%struct.TYPE_5__* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %153
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %160 = load i32, i32* @FSSS, align 4
  %161 = call i32 @field_value(%struct.TYPE_5__* %159, i32 %160)
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %163 = load i32, i32* @FDDD, align 4
  %164 = call i32 @field_value(%struct.TYPE_5__* %162, i32 %163)
  %165 = icmp eq i32 %161, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %158
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %169, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %176

171:                                              ; preds = %158
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %176

176:                                              ; preds = %171, %166
  br label %177

177:                                              ; preds = %176, %153, %148
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %179 = load i32, i32* @FSSS, align 4
  %180 = call i64 @field_valid(%struct.TYPE_5__* %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %220

182:                                              ; preds = %177
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %184 = load i32, i32* @FDDD, align 4
  %185 = call i64 @field_valid(%struct.TYPE_5__* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %220

187:                                              ; preds = %182
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %192 = load i32, i32* @FSSS, align 4
  %193 = call i32 @field_value(%struct.TYPE_5__* %191, i32 %192)
  %194 = call i32 @get_freg_str(i32 %193, i32* null)
  %195 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %194)
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %200 = load i32, i32* @FDDD, align 4
  %201 = call i32 @field_value(%struct.TYPE_5__* %199, i32 %200)
  %202 = call i32 @get_freg_str(i32 %201, i32* null)
  %203 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %202)
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %208 = load i32, i32* @FSSS, align 4
  %209 = call i32 @field_value(%struct.TYPE_5__* %207, i32 %208)
  %210 = call i32 @get_freg_str(i32 %209, i32* null)
  %211 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %210)
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %216 = load i32, i32* @FDDD, align 4
  %217 = call i32 @field_value(%struct.TYPE_5__* %215, i32 %216)
  %218 = call i32 @get_freg_str(i32 %217, i32* null)
  %219 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %187, %182, %177
  %221 = load i32, i32* %3, align 4
  %222 = and i32 %221, 0
  store i32 %222, i32* %3, align 4
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %224 = load i32, i32* @FSSS, align 4
  %225 = call i64 @field_valid(%struct.TYPE_5__* %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 1, i32 0
  %229 = load i32, i32* %3, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %3, align 4
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %232 = load i32, i32* @FDDD, align 4
  %233 = call i64 @field_valid(%struct.TYPE_5__* %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i32 2, i32 0
  %237 = load i32, i32* %3, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %3, align 4
  %239 = load i32, i32* %3, align 4
  switch i32 %239, label %283 [
    i32 1, label %240
    i32 2, label %249
    i32 3, label %266
  ]

240:                                              ; preds = %220
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %245 = load i32, i32* @FSSS, align 4
  %246 = call i32 @field_value(%struct.TYPE_5__* %244, i32 %245)
  %247 = call i32 @get_freg_str(i32 %246, i32* null)
  %248 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %247)
  br label %283

249:                                              ; preds = %220
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %254 = load i32, i32* @FDDD, align 4
  %255 = call i32 @field_value(%struct.TYPE_5__* %253, i32 %254)
  %256 = call i32 @get_freg_str(i32 %255, i32* null)
  %257 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %256)
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %262 = load i32, i32* @FDDD, align 4
  %263 = call i32 @field_value(%struct.TYPE_5__* %261, i32 %262)
  %264 = call i32 @get_freg_str(i32 %263, i32* null)
  %265 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %260, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %264)
  br label %283

266:                                              ; preds = %220
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %271 = load i32, i32* @FSSS, align 4
  %272 = call i32 @field_value(%struct.TYPE_5__* %270, i32 %271)
  %273 = call i32 @get_freg_str(i32 %272, i32* null)
  %274 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %269, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %273)
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %279 = load i32, i32* @FDDD, align 4
  %280 = call i32 @field_value(%struct.TYPE_5__* %278, i32 %279)
  %281 = call i32 @get_freg_str(i32 %280, i32* null)
  %282 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %277, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %281)
  br label %283

283:                                              ; preds = %220, %266, %249, %240
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %285 = load i32, i32* @FSSS, align 4
  %286 = call i64 @field_valid(%struct.TYPE_5__* %284, i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %283
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %293 = load i32, i32* @FSSS, align 4
  %294 = call i32 @field_value(%struct.TYPE_5__* %292, i32 %293)
  %295 = call i32 @get_freg_str(i32 %294, i32* null)
  %296 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %291, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %288, %283
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %299 = load i32, i32* @FDDD, align 4
  %300 = call i64 @field_valid(%struct.TYPE_5__* %298, i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %297
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %307 = load i32, i32* @FDDD, align 4
  %308 = call i32 @field_value(%struct.TYPE_5__* %306, i32 %307)
  %309 = call i32 @get_freg_str(i32 %308, i32* null)
  %310 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %305, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %309)
  br label %311

311:                                              ; preds = %302, %297
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %313 = load i32, i32* @XACS, align 4
  %314 = call i64 @field_valid(%struct.TYPE_5__* %312, i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %325

316:                                              ; preds = %311
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %321 = load i32, i32* @XACS, align 4
  %322 = call i32 @field_value(%struct.TYPE_5__* %320, i32 %321)
  %323 = call i32 @get_xreg_str(i32 %322, i32* null)
  %324 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %319, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %323)
  br label %325

325:                                              ; preds = %316, %311
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %327 = load i32, i32* @XACD, align 4
  %328 = call i64 @field_valid(%struct.TYPE_5__* %326, i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %339

330:                                              ; preds = %325
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %335 = load i32, i32* @XACD, align 4
  %336 = call i32 @field_value(%struct.TYPE_5__* %334, i32 %335)
  %337 = call i32 @get_xreg_str(i32 %336, i32* null)
  %338 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %333, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %337)
  br label %339

339:                                              ; preds = %330, %325
  %340 = load i32, i32* %3, align 4
  %341 = and i32 %340, 0
  store i32 %341, i32* %3, align 4
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %343 = load i32, i32* @SS, align 4
  %344 = call i64 @field_valid(%struct.TYPE_5__* %342, i32 %343)
  %345 = icmp ne i64 %344, 0
  %346 = zext i1 %345 to i64
  %347 = select i1 %345, i32 1, i32 0
  %348 = load i32, i32* %3, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %3, align 4
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %351 = load i32, i32* @SS2, align 4
  %352 = call i64 @field_valid(%struct.TYPE_5__* %350, i32 %351)
  %353 = icmp ne i64 %352, 0
  %354 = zext i1 %353 to i64
  %355 = select i1 %353, i32 2, i32 0
  %356 = load i32, i32* %3, align 4
  %357 = or i32 %356, %355
  store i32 %357, i32* %3, align 4
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %359 = load i32, i32* @DD, align 4
  %360 = call i64 @field_valid(%struct.TYPE_5__* %358, i32 %359)
  %361 = icmp ne i64 %360, 0
  %362 = zext i1 %361 to i64
  %363 = select i1 %361, i32 16, i32 0
  %364 = load i32, i32* %3, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %3, align 4
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %367 = load i32, i32* @DD2, align 4
  %368 = call i64 @field_valid(%struct.TYPE_5__* %366, i32 %367)
  %369 = icmp ne i64 %368, 0
  %370 = zext i1 %369 to i64
  %371 = select i1 %369, i32 32, i32 0
  %372 = load i32, i32* %3, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %3, align 4
  %374 = load i32, i32* %3, align 4
  switch i32 %374, label %491 [
    i32 1, label %375
    i32 3, label %383
    i32 17, label %398
    i32 51, label %439
    i32 16, label %468
    i32 48, label %476
  ]

375:                                              ; preds = %339
  %376 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %380 = load i32, i32* @SS, align 4
  %381 = call i32 @field_value(%struct.TYPE_5__* %379, i32 %380)
  %382 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %378, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %381)
  br label %491

383:                                              ; preds = %339
  %384 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %388 = load i32, i32* @SS, align 4
  %389 = call i32 @field_value(%struct.TYPE_5__* %387, i32 %388)
  %390 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %386, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %389)
  %391 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %395 = load i32, i32* @SS2, align 4
  %396 = call i32 @field_value(%struct.TYPE_5__* %394, i32 %395)
  %397 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %393, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %396)
  br label %491

398:                                              ; preds = %339
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %400 = load i32, i32* @SS, align 4
  %401 = call i32 @field_value(%struct.TYPE_5__* %399, i32 %400)
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %403 = load i32, i32* @DD, align 4
  %404 = call i32 @field_value(%struct.TYPE_5__* %402, i32 %403)
  %405 = icmp eq i32 %401, %404
  br i1 %405, label %406, label %415

406:                                              ; preds = %398
  %407 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %408 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %409, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0))
  %411 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %413, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  br label %424

415:                                              ; preds = %398
  %416 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %418, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %422, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  br label %424

424:                                              ; preds = %415, %406
  %425 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %429 = load i32, i32* @SS, align 4
  %430 = call i32 @field_value(%struct.TYPE_5__* %428, i32 %429)
  %431 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %427, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %430)
  %432 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %436 = load i32, i32* @DD, align 4
  %437 = call i32 @field_value(%struct.TYPE_5__* %435, i32 %436)
  %438 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %434, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %437)
  br label %491

439:                                              ; preds = %339
  %440 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %444 = load i32, i32* @SS, align 4
  %445 = call i32 @field_value(%struct.TYPE_5__* %443, i32 %444)
  %446 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %442, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %445)
  %447 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %451 = load i32, i32* @SS2, align 4
  %452 = call i32 @field_value(%struct.TYPE_5__* %450, i32 %451)
  %453 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %449, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %452)
  %454 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %455 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %458 = load i32, i32* @DD, align 4
  %459 = call i32 @field_value(%struct.TYPE_5__* %457, i32 %458)
  %460 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %456, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %459)
  %461 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %462 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %465 = load i32, i32* @DD2, align 4
  %466 = call i32 @field_value(%struct.TYPE_5__* %464, i32 %465)
  %467 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %463, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %466)
  br label %491

468:                                              ; preds = %339
  %469 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %473 = load i32, i32* @DD, align 4
  %474 = call i32 @field_value(%struct.TYPE_5__* %472, i32 %473)
  %475 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %471, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %474)
  br label %491

476:                                              ; preds = %339
  %477 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %478 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %481 = load i32, i32* @DD, align 4
  %482 = call i32 @field_value(%struct.TYPE_5__* %480, i32 %481)
  %483 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %479, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %482)
  %484 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %488 = load i32, i32* @DD2, align 4
  %489 = call i32 @field_value(%struct.TYPE_5__* %487, i32 %488)
  %490 = call i32 (i32, i8*, i8*, ...) @substitute(i32 %486, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %489)
  br label %491

491:                                              ; preds = %339, %476, %468, %439, %424, %383, %375
  ret void
}

declare dso_local i64 @field_valid(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @substitute(i32, i8*, i8*, ...) #1

declare dso_local i32 @field_value(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @get_v_str(i32, i32*) #1

declare dso_local i32 @get_t_str(i32, i32*) #1

declare dso_local i32 @get_xreg_str(i32, i32*) #1

declare dso_local i32 @get_freg_str(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
