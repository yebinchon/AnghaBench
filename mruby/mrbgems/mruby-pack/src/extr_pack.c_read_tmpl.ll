; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_read_tmpl.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_read_tmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpl = type { i8, i32 }

@PACK_DIR_STR = common dso_local global i32 0, align 4
@PACK_TYPE_STRING = common dso_local global i32 0, align 4
@PACK_FLAG_WIDTH = common dso_local global i32 0, align 4
@PACK_FLAG_COUNT2 = common dso_local global i32 0, align 4
@PACK_FLAG_a = common dso_local global i32 0, align 4
@PACK_DIR_CHAR = common dso_local global i32 0, align 4
@PACK_TYPE_INTEGER = common dso_local global i32 0, align 4
@PACK_FLAG_SIGNED = common dso_local global i32 0, align 4
@PACK_DIR_DOUBLE = common dso_local global i32 0, align 4
@PACK_TYPE_FLOAT = common dso_local global i32 0, align 4
@PACK_DIR_FLOAT = common dso_local global i32 0, align 4
@PACK_FLAG_LT = common dso_local global i32 0, align 4
@PACK_FLAG_GT = common dso_local global i32 0, align 4
@PACK_DIR_HEX = common dso_local global i32 0, align 4
@PACK_FLAG_LSB = common dso_local global i32 0, align 4
@PACK_DIR_LONG = common dso_local global i32 0, align 4
@PACK_DIR_BASE64 = common dso_local global i32 0, align 4
@PACK_DIR_SHORT = common dso_local global i32 0, align 4
@PACK_DIR_QUAD = common dso_local global i32 0, align 4
@PACK_DIR_UTF8 = common dso_local global i32 0, align 4
@PACK_DIR_NUL = common dso_local global i32 0, align 4
@PACK_TYPE_NONE = common dso_local global i32 0, align 4
@PACK_FLAG_Z = common dso_local global i32 0, align 4
@PACK_DIR_INVALID = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"too big template length\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"sSiIlLqQ\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"'%c' allowed only after types sSiIlLqQ\00", align 1
@PACK_FLAG_s = common dso_local global i32 0, align 4
@littleendian = common dso_local global i64 0, align 8
@PACK_FLAG_LITTLEENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tmpl*, i32*, i32*, i32*, i32*, i32*)* @read_tmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_tmpl(i32* %0, %struct.tmpl* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tmpl*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.tmpl* %1, %struct.tmpl** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %25 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %26 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @RSTRING_PTR(i32 %27)
  store i8* %28, i8** %23, align 8
  %29 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %30 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call signext i8 @RSTRING_LEN(i32 %31)
  store i8 %32, i8* %16, align 1
  %33 = load i8*, i8** %23, align 8
  %34 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %35 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 4
  %37 = add i8 %36, 1
  store i8 %37, i8* %35, align 4
  %38 = sext i8 %36 to i64
  %39 = getelementptr inbounds i8, i8* %33, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %15, align 1
  br label %41

41:                                               ; preds = %130, %129, %7
  %42 = load i8, i8* %15, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %206 [
    i32 65, label %44
    i32 97, label %52
    i32 67, label %62
    i32 99, label %65
    i32 68, label %71
    i32 100, label %71
    i32 70, label %77
    i32 102, label %77
    i32 69, label %83
    i32 101, label %91
    i32 71, label %99
    i32 103, label %107
    i32 72, label %115
    i32 104, label %121
    i32 73, label %129
    i32 105, label %130
    i32 76, label %131
    i32 108, label %134
    i32 109, label %140
    i32 78, label %148
    i32 110, label %154
    i32 81, label %160
    i32 113, label %163
    i32 83, label %169
    i32 115, label %172
    i32 85, label %178
    i32 86, label %181
    i32 118, label %187
    i32 120, label %193
    i32 90, label %196
  ]

44:                                               ; preds = %41
  %45 = load i32, i32* @PACK_DIR_STR, align 4
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* @PACK_TYPE_STRING, align 4
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* @PACK_FLAG_WIDTH, align 4
  %48 = load i32, i32* @PACK_FLAG_COUNT2, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %22, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %22, align 4
  br label %209

52:                                               ; preds = %41
  %53 = load i32, i32* @PACK_DIR_STR, align 4
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* @PACK_TYPE_STRING, align 4
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* @PACK_FLAG_WIDTH, align 4
  %56 = load i32, i32* @PACK_FLAG_COUNT2, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PACK_FLAG_a, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %22, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %22, align 4
  br label %209

62:                                               ; preds = %41
  %63 = load i32, i32* @PACK_DIR_CHAR, align 4
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %64, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %209

65:                                               ; preds = %41
  %66 = load i32, i32* @PACK_DIR_CHAR, align 4
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %67, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %68 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %69 = load i32, i32* %22, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %22, align 4
  br label %209

71:                                               ; preds = %41, %41
  %72 = load i32, i32* @PACK_DIR_DOUBLE, align 4
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  store i32 %73, i32* %19, align 4
  store i32 8, i32* %20, align 4
  %74 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %75 = load i32, i32* %22, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %22, align 4
  br label %209

77:                                               ; preds = %41, %41
  %78 = load i32, i32* @PACK_DIR_FLOAT, align 4
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  store i32 %79, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %80 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %81 = load i32, i32* %22, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %22, align 4
  br label %209

83:                                               ; preds = %41
  %84 = load i32, i32* @PACK_DIR_DOUBLE, align 4
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  store i32 %85, i32* %19, align 4
  store i32 8, i32* %20, align 4
  %86 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %87 = load i32, i32* @PACK_FLAG_LT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %22, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %22, align 4
  br label %209

91:                                               ; preds = %41
  %92 = load i32, i32* @PACK_DIR_FLOAT, align 4
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  store i32 %93, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %94 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %95 = load i32, i32* @PACK_FLAG_LT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %22, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %22, align 4
  br label %209

99:                                               ; preds = %41
  %100 = load i32, i32* @PACK_DIR_DOUBLE, align 4
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  store i32 %101, i32* %19, align 4
  store i32 8, i32* %20, align 4
  %102 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %103 = load i32, i32* @PACK_FLAG_GT, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %22, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %22, align 4
  br label %209

107:                                              ; preds = %41
  %108 = load i32, i32* @PACK_DIR_FLOAT, align 4
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  store i32 %109, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %110 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %111 = load i32, i32* @PACK_FLAG_GT, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %22, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %22, align 4
  br label %209

115:                                              ; preds = %41
  %116 = load i32, i32* @PACK_DIR_HEX, align 4
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* @PACK_TYPE_STRING, align 4
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* @PACK_FLAG_COUNT2, align 4
  %119 = load i32, i32* %22, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %22, align 4
  br label %209

121:                                              ; preds = %41
  %122 = load i32, i32* @PACK_DIR_HEX, align 4
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* @PACK_TYPE_STRING, align 4
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* @PACK_FLAG_COUNT2, align 4
  %125 = load i32, i32* @PACK_FLAG_LSB, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %22, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %22, align 4
  br label %209

129:                                              ; preds = %41
  store i8 76, i8* %15, align 1
  br label %41

130:                                              ; preds = %41
  store i8 108, i8* %15, align 1
  br label %41

131:                                              ; preds = %41
  %132 = load i32, i32* @PACK_DIR_LONG, align 4
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %133, i32* %19, align 4
  store i32 4, i32* %20, align 4
  br label %209

134:                                              ; preds = %41
  %135 = load i32, i32* @PACK_DIR_LONG, align 4
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %136, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %137 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %138 = load i32, i32* %22, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %22, align 4
  br label %209

140:                                              ; preds = %41
  %141 = load i32, i32* @PACK_DIR_BASE64, align 4
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* @PACK_TYPE_STRING, align 4
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* @PACK_FLAG_WIDTH, align 4
  %144 = load i32, i32* @PACK_FLAG_COUNT2, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %22, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %22, align 4
  br label %209

148:                                              ; preds = %41
  %149 = load i32, i32* @PACK_DIR_LONG, align 4
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %150, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %151 = load i32, i32* @PACK_FLAG_GT, align 4
  %152 = load i32, i32* %22, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %22, align 4
  br label %209

154:                                              ; preds = %41
  %155 = load i32, i32* @PACK_DIR_SHORT, align 4
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %156, i32* %19, align 4
  store i32 2, i32* %20, align 4
  %157 = load i32, i32* @PACK_FLAG_GT, align 4
  %158 = load i32, i32* %22, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %22, align 4
  br label %209

160:                                              ; preds = %41
  %161 = load i32, i32* @PACK_DIR_QUAD, align 4
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %162, i32* %19, align 4
  store i32 8, i32* %20, align 4
  br label %209

163:                                              ; preds = %41
  %164 = load i32, i32* @PACK_DIR_QUAD, align 4
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %165, i32* %19, align 4
  store i32 8, i32* %20, align 4
  %166 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %167 = load i32, i32* %22, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %22, align 4
  br label %209

169:                                              ; preds = %41
  %170 = load i32, i32* @PACK_DIR_SHORT, align 4
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %171, i32* %19, align 4
  store i32 2, i32* %20, align 4
  br label %209

172:                                              ; preds = %41
  %173 = load i32, i32* @PACK_DIR_SHORT, align 4
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %174, i32* %19, align 4
  store i32 2, i32* %20, align 4
  %175 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %176 = load i32, i32* %22, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %22, align 4
  br label %209

178:                                              ; preds = %41
  %179 = load i32, i32* @PACK_DIR_UTF8, align 4
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %180, i32* %19, align 4
  br label %209

181:                                              ; preds = %41
  %182 = load i32, i32* @PACK_DIR_LONG, align 4
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %183, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %184 = load i32, i32* @PACK_FLAG_LT, align 4
  %185 = load i32, i32* %22, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %22, align 4
  br label %209

187:                                              ; preds = %41
  %188 = load i32, i32* @PACK_DIR_SHORT, align 4
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %189, i32* %19, align 4
  store i32 2, i32* %20, align 4
  %190 = load i32, i32* @PACK_FLAG_LT, align 4
  %191 = load i32, i32* %22, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %22, align 4
  br label %209

193:                                              ; preds = %41
  %194 = load i32, i32* @PACK_DIR_NUL, align 4
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* @PACK_TYPE_NONE, align 4
  store i32 %195, i32* %19, align 4
  br label %209

196:                                              ; preds = %41
  %197 = load i32, i32* @PACK_DIR_STR, align 4
  store i32 %197, i32* %18, align 4
  %198 = load i32, i32* @PACK_TYPE_STRING, align 4
  store i32 %198, i32* %19, align 4
  %199 = load i32, i32* @PACK_FLAG_WIDTH, align 4
  %200 = load i32, i32* @PACK_FLAG_COUNT2, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @PACK_FLAG_Z, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* %22, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %22, align 4
  br label %209

206:                                              ; preds = %41
  %207 = load i32, i32* @PACK_DIR_INVALID, align 4
  store i32 %207, i32* %18, align 4
  %208 = load i32, i32* @PACK_TYPE_NONE, align 4
  store i32 %208, i32* %19, align 4
  br label %209

209:                                              ; preds = %206, %196, %193, %187, %181, %178, %172, %169, %163, %160, %154, %148, %140, %134, %131, %121, %115, %107, %99, %91, %83, %77, %71, %65, %62, %52, %44
  br label %210

210:                                              ; preds = %342, %281, %209
  %211 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %212 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %211, i32 0, i32 0
  %213 = load i8, i8* %212, align 4
  %214 = sext i8 %213 to i32
  %215 = load i8, i8* %16, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %343

218:                                              ; preds = %210
  %219 = load i8*, i8** %23, align 8
  %220 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %221 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %220, i32 0, i32 0
  %222 = load i8, i8* %221, align 4
  %223 = add i8 %222, 1
  store i8 %223, i8* %221, align 4
  %224 = sext i8 %222 to i64
  %225 = getelementptr inbounds i8, i8* %219, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %17, align 4
  %229 = trunc i32 %228 to i8
  %230 = call i64 @ISDIGIT(i8 signext %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %282

232:                                              ; preds = %218
  %233 = load i32, i32* %17, align 4
  %234 = sub nsw i32 %233, 48
  store i32 %234, i32* %21, align 4
  br label %235

235:                                              ; preds = %276, %232
  %236 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %237 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %236, i32 0, i32 0
  %238 = load i8, i8* %237, align 4
  %239 = sext i8 %238 to i32
  %240 = load i8, i8* %16, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp slt i32 %239, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %235
  %244 = load i8*, i8** %23, align 8
  %245 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %246 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %245, i32 0, i32 0
  %247 = load i8, i8* %246, align 4
  %248 = sext i8 %247 to i64
  %249 = getelementptr inbounds i8, i8* %244, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = call i64 @ISDIGIT(i8 signext %250)
  %252 = icmp ne i64 %251, 0
  br label %253

253:                                              ; preds = %243, %235
  %254 = phi i1 [ false, %235 ], [ %252, %243 ]
  br i1 %254, label %255, label %281

255:                                              ; preds = %253
  %256 = load i8*, i8** %23, align 8
  %257 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %258 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %257, i32 0, i32 0
  %259 = load i8, i8* %258, align 4
  %260 = add i8 %259, 1
  store i8 %260, i8* %258, align 4
  %261 = sext i8 %259 to i64
  %262 = getelementptr inbounds i8, i8* %256, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = sub nsw i32 %264, 48
  store i32 %265, i32* %24, align 4
  %266 = load i32, i32* %21, align 4
  %267 = load i32, i32* %24, align 4
  %268 = add nsw i32 %266, %267
  %269 = load i32, i32* @INT_MAX, align 4
  %270 = sdiv i32 %269, 10
  %271 = icmp sgt i32 %268, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %255
  %273 = load i32*, i32** %8, align 8
  %274 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %275 = call i32 @mrb_raise(i32* %273, i32 %274, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %276

276:                                              ; preds = %272, %255
  %277 = load i32, i32* %21, align 4
  %278 = mul nsw i32 %277, 10
  %279 = load i32, i32* %24, align 4
  %280 = add nsw i32 %278, %279
  store i32 %280, i32* %21, align 4
  br label %235

281:                                              ; preds = %253
  br label %210

282:                                              ; preds = %218
  %283 = load i32, i32* %17, align 4
  %284 = icmp eq i32 %283, 42
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 -1, i32* %21, align 4
  br label %341

286:                                              ; preds = %282
  %287 = load i32, i32* %17, align 4
  %288 = icmp eq i32 %287, 95
  br i1 %288, label %298, label %289

289:                                              ; preds = %286
  %290 = load i32, i32* %17, align 4
  %291 = icmp eq i32 %290, 33
  br i1 %291, label %298, label %292

292:                                              ; preds = %289
  %293 = load i32, i32* %17, align 4
  %294 = icmp eq i32 %293, 60
  br i1 %294, label %298, label %295

295:                                              ; preds = %292
  %296 = load i32, i32* %17, align 4
  %297 = icmp eq i32 %296, 62
  br i1 %297, label %298, label %335

298:                                              ; preds = %295, %292, %289, %286
  %299 = load i8, i8* %15, align 1
  %300 = sext i8 %299 to i32
  %301 = call i32* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %300)
  %302 = icmp eq i32* %301, null
  br i1 %302, label %303, label %308

303:                                              ; preds = %298
  %304 = load i32*, i32** %8, align 8
  %305 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %306 = load i32, i32* %17, align 4
  %307 = call i32 @mrb_raisef(i32* %304, i32 %305, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %306)
  br label %308

308:                                              ; preds = %303, %298
  %309 = load i32, i32* %17, align 4
  %310 = icmp eq i32 %309, 95
  br i1 %310, label %314, label %311

311:                                              ; preds = %308
  %312 = load i32, i32* %17, align 4
  %313 = icmp eq i32 %312, 33
  br i1 %313, label %314, label %318

314:                                              ; preds = %311, %308
  %315 = load i32, i32* @PACK_FLAG_s, align 4
  %316 = load i32, i32* %22, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %22, align 4
  br label %334

318:                                              ; preds = %311
  %319 = load i32, i32* %17, align 4
  %320 = icmp eq i32 %319, 60
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = load i32, i32* @PACK_FLAG_LT, align 4
  %323 = load i32, i32* %22, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %22, align 4
  br label %333

325:                                              ; preds = %318
  %326 = load i32, i32* %17, align 4
  %327 = icmp eq i32 %326, 62
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = load i32, i32* @PACK_FLAG_GT, align 4
  %330 = load i32, i32* %22, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* %22, align 4
  br label %332

332:                                              ; preds = %328, %325
  br label %333

333:                                              ; preds = %332, %321
  br label %334

334:                                              ; preds = %333, %314
  br label %340

335:                                              ; preds = %295
  %336 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %337 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %336, i32 0, i32 0
  %338 = load i8, i8* %337, align 4
  %339 = add i8 %338, -1
  store i8 %339, i8* %337, align 4
  br label %343

340:                                              ; preds = %334
  br label %341

341:                                              ; preds = %340, %285
  br label %342

342:                                              ; preds = %341
  br label %210

343:                                              ; preds = %335, %210
  %344 = load i32, i32* %22, align 4
  %345 = load i32, i32* @PACK_FLAG_LT, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %356, label %348

348:                                              ; preds = %343
  %349 = load i32, i32* %22, align 4
  %350 = load i32, i32* @PACK_FLAG_GT, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %360, label %353

353:                                              ; preds = %348
  %354 = load i64, i64* @littleendian, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %353, %343
  %357 = load i32, i32* @PACK_FLAG_LITTLEENDIAN, align 4
  %358 = load i32, i32* %22, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %22, align 4
  br label %360

360:                                              ; preds = %356, %353, %348
  %361 = load i32, i32* %18, align 4
  %362 = load i32*, i32** %10, align 8
  store i32 %361, i32* %362, align 4
  %363 = load i32, i32* %19, align 4
  %364 = load i32*, i32** %11, align 8
  store i32 %363, i32* %364, align 4
  %365 = load i32, i32* %20, align 4
  %366 = load i32*, i32** %12, align 8
  store i32 %365, i32* %366, align 4
  %367 = load i32, i32* %21, align 4
  %368 = load i32*, i32** %13, align 8
  store i32 %367, i32* %368, align 4
  %369 = load i32, i32* %22, align 4
  %370 = load i32*, i32** %14, align 8
  store i32 %369, i32* %370, align 4
  ret void
}

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local signext i8 @RSTRING_LEN(i32) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
