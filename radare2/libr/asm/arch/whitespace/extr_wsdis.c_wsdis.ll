; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/whitespace/extr_wsdis.c_wsdis.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/whitespace/extr_wsdis.c_wsdis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"push %d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"slide\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"illegal_stack_t\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"illegal_heap\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"putc\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"puti\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"getc\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"geti\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"illegal_io\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"illegal_ar_t\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"illegal_ar\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"illegal_fl_lf\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"jn\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"jz\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"wtf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsdis(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @get_ws_optype(i32* %12, i32 %13)
  switch i32 %14, label %803 [
    i32 128, label %15
    i32 130, label %18
    i32 129, label %24
    i32 132, label %236
    i32 131, label %286
    i32 134, label %431
    i32 133, label %532
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  store i32 0, i32* %4, align 4
  br label %809

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i32 @r_strbuf_set(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  store i32 1, i32* %4, align 4
  br label %809

24:                                               ; preds = %3
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 1
  %30 = call i32* @get_ws_next_token(i32* %27, i32 %29)
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %809

35:                                               ; preds = %24
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32* @get_ws_next_token(i32* %36, i32 %38)
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %235 [
    i32 32, label %41
    i32 10, label %66
    i32 9, label %115
  ]

41:                                               ; preds = %35
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32* @get_ws_next_token(i32* %42, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @test_ws_token_exist(i32* %45, i32 10, i32 %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %809

53:                                               ; preds = %41
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 -1
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @test_ws_token_exist(i32* %55, i32 10, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %10, align 4
  %61 = call i8* @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = call i32 @r_strbuf_set(i32* %59, i8* %61)
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  store i32 %63, i32* %4, align 4
  br label %809

66:                                               ; preds = %35
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32* @get_ws_next_token(i32* %67, i32 %69)
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32* %71, i32** %9, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = ptrtoint i32* %75 to i64
  %78 = ptrtoint i32* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  %81 = sub nsw i64 %74, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32* @get_ws_next_token(i32* %72, i32 %82)
  store i32* %83, i32** %9, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %66
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  store i32 0, i32* %4, align 4
  br label %809

89:                                               ; preds = %66
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %104 [
    i32 32, label %92
    i32 9, label %96
    i32 10, label %100
  ]

92:                                               ; preds = %89
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = call i32 @r_strbuf_set(i32* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %104

96:                                               ; preds = %89
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = call i32 @r_strbuf_set(i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %104

100:                                              ; preds = %89
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = call i32 @r_strbuf_set(i32* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %89, %100, %96, %92
  %105 = load i32*, i32** %9, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = ptrtoint i32* %105 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = add nsw i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  store i32 %112, i32* %4, align 4
  br label %809

115:                                              ; preds = %35
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sub nsw i32 %117, 1
  %119 = call i32* @get_ws_next_token(i32* %116, i32 %118)
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32* %120, i32** %9, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = load i32*, i32** %9, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = ptrtoint i32* %124 to i64
  %127 = ptrtoint i32* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 4
  %130 = sub nsw i64 %123, %129
  %131 = trunc i64 %130 to i32
  %132 = call i32* @get_ws_next_token(i32* %121, i32 %131)
  store i32* %132, i32** %9, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %115
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i32 0, i32* %137, align 4
  store i32 0, i32* %4, align 4
  br label %809

138:                                              ; preds = %115
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %163 [
    i32 32, label %141
    i32 10, label %145
    i32 9, label %149
  ]

141:                                              ; preds = %138
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = call i32 @r_strbuf_set(i32* %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %163

145:                                              ; preds = %138
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = call i32 @r_strbuf_set(i32* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %163

149:                                              ; preds = %138
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = call i32 @r_strbuf_set(i32* %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32*, i32** %9, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = ptrtoint i32* %153 to i64
  %156 = ptrtoint i32* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 4
  %159 = add nsw i64 %158, 1
  %160 = trunc i64 %159 to i32
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  store i32 %160, i32* %4, align 4
  br label %809

163:                                              ; preds = %138, %145, %141
  %164 = load i32*, i32** %9, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %9, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = load i32*, i32** %9, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = ptrtoint i32* %169 to i64
  %172 = ptrtoint i32* %170 to i64
  %173 = sub i64 %171, %172
  %174 = sdiv exact i64 %173, 4
  %175 = sub nsw i64 %168, %174
  %176 = sub nsw i64 %175, 1
  %177 = trunc i64 %176 to i32
  %178 = call i32 @test_ws_token_exist(i32* %166, i32 10, i32 %177)
  %179 = icmp eq i32 -1, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %163
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = call i32 @r_strbuf_set(i32* %182, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store i32 0, i32* %185, align 4
  store i32 0, i32* %4, align 4
  br label %809

186:                                              ; preds = %163
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = call i32 @r_strbuf_length(i32* %188)
  %190 = icmp slt i32 %189, 6
  br i1 %190, label %191, label %209

191:                                              ; preds = %186
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = load i32*, i32** %9, align 8
  %198 = load i32*, i32** %6, align 8
  %199 = ptrtoint i32* %197 to i64
  %200 = ptrtoint i32* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sdiv exact i64 %201, 4
  %203 = sub nsw i64 %196, %202
  %204 = sub nsw i64 %203, 1
  %205 = trunc i64 %204 to i32
  %206 = call i32 @get_ws_val(i32* %194, i32 %205)
  %207 = call i8* @sdb_fmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %206)
  %208 = call i32 @r_strbuf_append(i32* %193, i8* %207)
  br label %209

209:                                              ; preds = %191, %186
  %210 = load i32*, i32** %9, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = load i32*, i32** %9, align 8
  %214 = load i32*, i32** %6, align 8
  %215 = ptrtoint i32* %213 to i64
  %216 = ptrtoint i32* %214 to i64
  %217 = sub i64 %215, %216
  %218 = sdiv exact i64 %217, 4
  %219 = sub nsw i64 %212, %218
  %220 = sub nsw i64 %219, 1
  %221 = trunc i64 %220 to i32
  %222 = call i32 @test_ws_token_exist(i32* %210, i32 10, i32 %221)
  %223 = load i32*, i32** %9, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  %226 = load i32*, i32** %6, align 8
  %227 = ptrtoint i32* %225 to i64
  %228 = ptrtoint i32* %226 to i64
  %229 = sub i64 %227, %228
  %230 = sdiv exact i64 %229, 4
  %231 = add nsw i64 %230, 1
  %232 = trunc i64 %231 to i32
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 4
  store i32 %232, i32* %4, align 4
  br label %809

235:                                              ; preds = %35
  br label %236

236:                                              ; preds = %3, %235
  %237 = load i32*, i32** %9, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %7, align 4
  %240 = sub nsw i32 %239, 1
  %241 = call i32* @get_ws_next_token(i32* %238, i32 %240)
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  store i32* %242, i32** %9, align 8
  %243 = load i32*, i32** %9, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = load i32*, i32** %9, align 8
  %247 = load i32*, i32** %6, align 8
  %248 = ptrtoint i32* %246 to i64
  %249 = ptrtoint i32* %247 to i64
  %250 = sub i64 %248, %249
  %251 = sdiv exact i64 %250, 4
  %252 = sub nsw i64 %245, %251
  %253 = trunc i64 %252 to i32
  %254 = call i32* @get_ws_next_token(i32* %243, i32 %253)
  store i32* %254, i32** %9, align 8
  %255 = load i32*, i32** %9, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %236
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  store i32 0, i32* %259, align 4
  store i32 0, i32* %4, align 4
  br label %809

260:                                              ; preds = %236
  %261 = load i32*, i32** %9, align 8
  %262 = load i32, i32* %261, align 4
  switch i32 %262, label %275 [
    i32 32, label %263
    i32 9, label %267
    i32 10, label %271
  ]

263:                                              ; preds = %260
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 1
  %266 = call i32 @r_strbuf_set(i32* %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %275

267:                                              ; preds = %260
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 1
  %270 = call i32 @r_strbuf_set(i32* %269, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %275

271:                                              ; preds = %260
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 1
  %274 = call i32 @r_strbuf_set(i32* %273, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %275

275:                                              ; preds = %260, %271, %267, %263
  %276 = load i32*, i32** %9, align 8
  %277 = load i32*, i32** %6, align 8
  %278 = ptrtoint i32* %276 to i64
  %279 = ptrtoint i32* %277 to i64
  %280 = sub i64 %278, %279
  %281 = sdiv exact i64 %280, 4
  %282 = add nsw i64 %281, 1
  %283 = trunc i64 %282 to i32
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 4
  store i32 %283, i32* %4, align 4
  br label %809

286:                                              ; preds = %3
  %287 = load i32*, i32** %9, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  %289 = load i32, i32* %7, align 4
  %290 = sub nsw i32 %289, 1
  %291 = call i32* @get_ws_next_token(i32* %288, i32 %290)
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  store i32* %292, i32** %9, align 8
  %293 = load i32*, i32** %9, align 8
  %294 = load i32, i32* %7, align 4
  %295 = sext i32 %294 to i64
  %296 = load i32*, i32** %9, align 8
  %297 = load i32*, i32** %6, align 8
  %298 = ptrtoint i32* %296 to i64
  %299 = ptrtoint i32* %297 to i64
  %300 = sub i64 %298, %299
  %301 = sdiv exact i64 %300, 4
  %302 = sub nsw i64 %295, %301
  %303 = trunc i64 %302 to i32
  %304 = call i32* @get_ws_next_token(i32* %293, i32 %303)
  store i32* %304, i32** %9, align 8
  %305 = load i32*, i32** %9, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %310, label %307

307:                                              ; preds = %286
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 0
  store i32 0, i32* %309, align 4
  store i32 0, i32* %4, align 4
  br label %809

310:                                              ; preds = %286
  %311 = load i32*, i32** %9, align 8
  %312 = load i32, i32* %311, align 4
  switch i32 %312, label %417 [
    i32 32, label %313
    i32 9, label %365
  ]

313:                                              ; preds = %310
  %314 = load i32*, i32** %9, align 8
  %315 = getelementptr inbounds i32, i32* %314, i32 1
  store i32* %315, i32** %9, align 8
  %316 = load i32*, i32** %9, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = load i32*, i32** %9, align 8
  %320 = load i32*, i32** %6, align 8
  %321 = ptrtoint i32* %319 to i64
  %322 = ptrtoint i32* %320 to i64
  %323 = sub i64 %321, %322
  %324 = sdiv exact i64 %323, 4
  %325 = sub nsw i64 %318, %324
  %326 = trunc i64 %325 to i32
  %327 = call i32* @get_ws_next_token(i32* %316, i32 %326)
  store i32* %327, i32** %9, align 8
  %328 = load i32*, i32** %9, align 8
  %329 = icmp ne i32* %328, null
  br i1 %329, label %333, label %330

330:                                              ; preds = %313
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 0
  store i32 0, i32* %332, align 4
  store i32 0, i32* %4, align 4
  br label %809

333:                                              ; preds = %313
  %334 = load i32*, i32** %9, align 8
  %335 = load i32, i32* %334, align 4
  switch i32 %335, label %364 [
    i32 32, label %336
    i32 9, label %350
  ]

336:                                              ; preds = %333
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 1
  %339 = call i32 @r_strbuf_set(i32* %338, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %340 = load i32*, i32** %9, align 8
  %341 = load i32*, i32** %6, align 8
  %342 = ptrtoint i32* %340 to i64
  %343 = ptrtoint i32* %341 to i64
  %344 = sub i64 %342, %343
  %345 = sdiv exact i64 %344, 4
  %346 = add nsw i64 %345, 1
  %347 = trunc i64 %346 to i32
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 0
  store i32 %347, i32* %349, align 4
  store i32 %347, i32* %4, align 4
  br label %809

350:                                              ; preds = %333
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 1
  %353 = call i32 @r_strbuf_set(i32* %352, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %354 = load i32*, i32** %9, align 8
  %355 = load i32*, i32** %6, align 8
  %356 = ptrtoint i32* %354 to i64
  %357 = ptrtoint i32* %355 to i64
  %358 = sub i64 %356, %357
  %359 = sdiv exact i64 %358, 4
  %360 = add nsw i64 %359, 1
  %361 = trunc i64 %360 to i32
  %362 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 0
  store i32 %361, i32* %363, align 4
  store i32 %361, i32* %4, align 4
  br label %809

364:                                              ; preds = %333
  br label %417

365:                                              ; preds = %310
  %366 = load i32*, i32** %9, align 8
  %367 = getelementptr inbounds i32, i32* %366, i32 1
  store i32* %367, i32** %9, align 8
  %368 = load i32*, i32** %9, align 8
  %369 = load i32, i32* %7, align 4
  %370 = sext i32 %369 to i64
  %371 = load i32*, i32** %9, align 8
  %372 = load i32*, i32** %6, align 8
  %373 = ptrtoint i32* %371 to i64
  %374 = ptrtoint i32* %372 to i64
  %375 = sub i64 %373, %374
  %376 = sdiv exact i64 %375, 4
  %377 = sub nsw i64 %370, %376
  %378 = trunc i64 %377 to i32
  %379 = call i32* @get_ws_next_token(i32* %368, i32 %378)
  store i32* %379, i32** %9, align 8
  %380 = load i32*, i32** %9, align 8
  %381 = icmp ne i32* %380, null
  br i1 %381, label %385, label %382

382:                                              ; preds = %365
  %383 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 0
  store i32 0, i32* %384, align 4
  store i32 0, i32* %4, align 4
  br label %809

385:                                              ; preds = %365
  %386 = load i32*, i32** %9, align 8
  %387 = load i32, i32* %386, align 4
  switch i32 %387, label %416 [
    i32 32, label %388
    i32 9, label %402
  ]

388:                                              ; preds = %385
  %389 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 1
  %391 = call i32 @r_strbuf_set(i32* %390, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %392 = load i32*, i32** %9, align 8
  %393 = load i32*, i32** %6, align 8
  %394 = ptrtoint i32* %392 to i64
  %395 = ptrtoint i32* %393 to i64
  %396 = sub i64 %394, %395
  %397 = sdiv exact i64 %396, 4
  %398 = add nsw i64 %397, 1
  %399 = trunc i64 %398 to i32
  %400 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 4
  store i32 %399, i32* %4, align 4
  br label %809

402:                                              ; preds = %385
  %403 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 1
  %405 = call i32 @r_strbuf_set(i32* %404, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %406 = load i32*, i32** %9, align 8
  %407 = load i32*, i32** %6, align 8
  %408 = ptrtoint i32* %406 to i64
  %409 = ptrtoint i32* %407 to i64
  %410 = sub i64 %408, %409
  %411 = sdiv exact i64 %410, 4
  %412 = add nsw i64 %411, 1
  %413 = trunc i64 %412 to i32
  %414 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %414, i32 0, i32 0
  store i32 %413, i32* %415, align 4
  store i32 %413, i32* %4, align 4
  br label %809

416:                                              ; preds = %385
  br label %417

417:                                              ; preds = %416, %310, %364
  %418 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 1
  %420 = call i32 @r_strbuf_set(i32* %419, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %421 = load i32*, i32** %9, align 8
  %422 = load i32*, i32** %6, align 8
  %423 = ptrtoint i32* %421 to i64
  %424 = ptrtoint i32* %422 to i64
  %425 = sub i64 %423, %424
  %426 = sdiv exact i64 %425, 4
  %427 = add nsw i64 %426, 1
  %428 = trunc i64 %427 to i32
  %429 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 0
  store i32 %428, i32* %430, align 4
  store i32 %428, i32* %4, align 4
  br label %809

431:                                              ; preds = %3
  %432 = load i32*, i32** %9, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 1
  %434 = load i32, i32* %7, align 4
  %435 = sub nsw i32 %434, 1
  %436 = call i32* @get_ws_next_token(i32* %433, i32 %435)
  %437 = getelementptr inbounds i32, i32* %436, i64 1
  store i32* %437, i32** %9, align 8
  %438 = load i32*, i32** %9, align 8
  %439 = load i32, i32* %7, align 4
  %440 = sext i32 %439 to i64
  %441 = load i32*, i32** %9, align 8
  %442 = load i32*, i32** %6, align 8
  %443 = ptrtoint i32* %441 to i64
  %444 = ptrtoint i32* %442 to i64
  %445 = sub i64 %443, %444
  %446 = sdiv exact i64 %445, 4
  %447 = sub nsw i64 %440, %446
  %448 = trunc i64 %447 to i32
  %449 = call i32* @get_ws_next_token(i32* %438, i32 %448)
  store i32* %449, i32** %9, align 8
  %450 = load i32*, i32** %9, align 8
  %451 = icmp ne i32* %450, null
  br i1 %451, label %455, label %452

452:                                              ; preds = %431
  %453 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %453, i32 0, i32 0
  store i32 0, i32* %454, align 4
  store i32 0, i32* %4, align 4
  br label %809

455:                                              ; preds = %431
  %456 = load i32*, i32** %9, align 8
  %457 = load i32, i32* %456, align 4
  switch i32 %457, label %513 [
    i32 32, label %458
    i32 9, label %485
    i32 10, label %512
  ]

458:                                              ; preds = %455
  %459 = load i32*, i32** %9, align 8
  %460 = getelementptr inbounds i32, i32* %459, i32 1
  store i32* %460, i32** %9, align 8
  %461 = load i32*, i32** %9, align 8
  %462 = load i32, i32* %7, align 4
  %463 = sext i32 %462 to i64
  %464 = load i32*, i32** %9, align 8
  %465 = load i32*, i32** %6, align 8
  %466 = ptrtoint i32* %464 to i64
  %467 = ptrtoint i32* %465 to i64
  %468 = sub i64 %466, %467
  %469 = sdiv exact i64 %468, 4
  %470 = sub nsw i64 %463, %469
  %471 = trunc i64 %470 to i32
  %472 = call i32* @get_ws_next_token(i32* %461, i32 %471)
  store i32* %472, i32** %9, align 8
  %473 = load i32*, i32** %9, align 8
  %474 = icmp ne i32* %473, null
  br i1 %474, label %478, label %475

475:                                              ; preds = %458
  %476 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i32 0, i32 0
  store i32 0, i32* %477, align 4
  store i32 0, i32* %4, align 4
  br label %809

478:                                              ; preds = %458
  %479 = load i32*, i32** %9, align 8
  %480 = load i32, i32* %479, align 4
  switch i32 %480, label %484 [
    i32 32, label %481
    i32 9, label %482
    i32 10, label %483
  ]

481:                                              ; preds = %478
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8** %8, align 8
  br label %484

482:                                              ; preds = %478
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8** %8, align 8
  br label %484

483:                                              ; preds = %478
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8** %8, align 8
  br label %484

484:                                              ; preds = %478, %483, %482, %481
  br label %513

485:                                              ; preds = %455
  %486 = load i32*, i32** %9, align 8
  %487 = getelementptr inbounds i32, i32* %486, i32 1
  store i32* %487, i32** %9, align 8
  %488 = load i32*, i32** %9, align 8
  %489 = load i32, i32* %7, align 4
  %490 = sext i32 %489 to i64
  %491 = load i32*, i32** %9, align 8
  %492 = load i32*, i32** %6, align 8
  %493 = ptrtoint i32* %491 to i64
  %494 = ptrtoint i32* %492 to i64
  %495 = sub i64 %493, %494
  %496 = sdiv exact i64 %495, 4
  %497 = sub nsw i64 %490, %496
  %498 = trunc i64 %497 to i32
  %499 = call i32* @get_ws_next_token(i32* %488, i32 %498)
  store i32* %499, i32** %9, align 8
  %500 = load i32*, i32** %9, align 8
  %501 = icmp ne i32* %500, null
  br i1 %501, label %505, label %502

502:                                              ; preds = %485
  %503 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %504 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %503, i32 0, i32 0
  store i32 0, i32* %504, align 4
  store i32 0, i32* %4, align 4
  br label %809

505:                                              ; preds = %485
  %506 = load i32*, i32** %9, align 8
  %507 = load i32, i32* %506, align 4
  switch i32 %507, label %511 [
    i32 32, label %508
    i32 9, label %509
    i32 10, label %510
  ]

508:                                              ; preds = %505
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8** %8, align 8
  br label %511

509:                                              ; preds = %505
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8** %8, align 8
  br label %511

510:                                              ; preds = %505
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8** %8, align 8
  br label %511

511:                                              ; preds = %505, %510, %509, %508
  br label %513

512:                                              ; preds = %455
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8** %8, align 8
  br label %513

513:                                              ; preds = %455, %512, %511, %484
  %514 = load i8*, i8** %8, align 8
  %515 = icmp ne i8* %514, null
  br i1 %515, label %516, label %521

516:                                              ; preds = %513
  %517 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %518 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %517, i32 0, i32 1
  %519 = load i8*, i8** %8, align 8
  %520 = call i32 @r_strbuf_set(i32* %518, i8* %519)
  br label %521

521:                                              ; preds = %516, %513
  %522 = load i32*, i32** %9, align 8
  %523 = load i32*, i32** %6, align 8
  %524 = ptrtoint i32* %522 to i64
  %525 = ptrtoint i32* %523 to i64
  %526 = sub i64 %524, %525
  %527 = sdiv exact i64 %526, 4
  %528 = add nsw i64 %527, 1
  %529 = trunc i64 %528 to i32
  %530 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %531 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %530, i32 0, i32 0
  store i32 %529, i32* %531, align 4
  store i32 %529, i32* %4, align 4
  br label %809

532:                                              ; preds = %3
  %533 = load i32*, i32** %9, align 8
  %534 = getelementptr inbounds i32, i32* %533, i64 1
  %535 = load i32, i32* %7, align 4
  %536 = sub nsw i32 %535, 1
  %537 = call i32* @get_ws_next_token(i32* %534, i32 %536)
  store i32* %537, i32** %9, align 8
  %538 = load i32*, i32** %9, align 8
  %539 = icmp ne i32* %538, null
  br i1 %539, label %543, label %540

540:                                              ; preds = %532
  %541 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %542 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %541, i32 0, i32 0
  store i32 0, i32* %542, align 4
  store i32 0, i32* %4, align 4
  br label %809

543:                                              ; preds = %532
  %544 = load i32*, i32** %9, align 8
  %545 = load i32, i32* %544, align 4
  switch i32 %545, label %802 [
    i32 10, label %546
    i32 9, label %589
    i32 32, label %704
  ]

546:                                              ; preds = %543
  %547 = load i32*, i32** %9, align 8
  %548 = getelementptr inbounds i32, i32* %547, i32 1
  store i32* %548, i32** %9, align 8
  %549 = load i32*, i32** %9, align 8
  %550 = load i32, i32* %7, align 4
  %551 = sext i32 %550 to i64
  %552 = load i32*, i32** %9, align 8
  %553 = load i32*, i32** %6, align 8
  %554 = ptrtoint i32* %552 to i64
  %555 = ptrtoint i32* %553 to i64
  %556 = sub i64 %554, %555
  %557 = sdiv exact i64 %556, 4
  %558 = sub nsw i64 %551, %557
  %559 = trunc i64 %558 to i32
  %560 = call i32* @get_ws_next_token(i32* %549, i32 %559)
  store i32* %560, i32** %9, align 8
  %561 = load i32*, i32** %9, align 8
  %562 = icmp ne i32* %561, null
  br i1 %562, label %566, label %563

563:                                              ; preds = %546
  %564 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %565 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %564, i32 0, i32 0
  store i32 0, i32* %565, align 4
  store i32 0, i32* %4, align 4
  br label %809

566:                                              ; preds = %546
  %567 = load i32*, i32** %9, align 8
  %568 = load i32, i32* %567, align 4
  %569 = icmp eq i32 %568, 10
  br i1 %569, label %570, label %574

570:                                              ; preds = %566
  %571 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %572 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %571, i32 0, i32 1
  %573 = call i32 @r_strbuf_set(i32* %572, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  br label %578

574:                                              ; preds = %566
  %575 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %576 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %575, i32 0, i32 1
  %577 = call i32 @r_strbuf_set(i32* %576, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  br label %578

578:                                              ; preds = %574, %570
  %579 = load i32*, i32** %9, align 8
  %580 = load i32*, i32** %6, align 8
  %581 = ptrtoint i32* %579 to i64
  %582 = ptrtoint i32* %580 to i64
  %583 = sub i64 %581, %582
  %584 = sdiv exact i64 %583, 4
  %585 = add nsw i64 %584, 1
  %586 = trunc i64 %585 to i32
  %587 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %588 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %587, i32 0, i32 0
  store i32 %586, i32* %588, align 4
  store i32 %586, i32* %4, align 4
  br label %809

589:                                              ; preds = %543
  %590 = load i32*, i32** %9, align 8
  %591 = getelementptr inbounds i32, i32* %590, i32 1
  store i32* %591, i32** %9, align 8
  %592 = load i32*, i32** %9, align 8
  %593 = load i32, i32* %7, align 4
  %594 = sext i32 %593 to i64
  %595 = load i32*, i32** %9, align 8
  %596 = load i32*, i32** %6, align 8
  %597 = ptrtoint i32* %595 to i64
  %598 = ptrtoint i32* %596 to i64
  %599 = sub i64 %597, %598
  %600 = sdiv exact i64 %599, 4
  %601 = sub nsw i64 %594, %600
  %602 = trunc i64 %601 to i32
  %603 = call i32* @get_ws_next_token(i32* %592, i32 %602)
  store i32* %603, i32** %9, align 8
  %604 = load i32*, i32** %9, align 8
  %605 = icmp ne i32* %604, null
  br i1 %605, label %609, label %606

606:                                              ; preds = %589
  %607 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %608 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %607, i32 0, i32 0
  store i32 0, i32* %608, align 4
  store i32 0, i32* %4, align 4
  br label %809

609:                                              ; preds = %589
  %610 = load i32*, i32** %9, align 8
  %611 = load i32, i32* %610, align 4
  switch i32 %611, label %634 [
    i32 10, label %612
    i32 9, label %626
    i32 32, label %630
  ]

612:                                              ; preds = %609
  %613 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %614 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %613, i32 0, i32 1
  %615 = call i32 @r_strbuf_set(i32* %614, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  %616 = load i32*, i32** %9, align 8
  %617 = load i32*, i32** %6, align 8
  %618 = ptrtoint i32* %616 to i64
  %619 = ptrtoint i32* %617 to i64
  %620 = sub i64 %618, %619
  %621 = sdiv exact i64 %620, 4
  %622 = add nsw i64 %621, 1
  %623 = trunc i64 %622 to i32
  %624 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %625 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %624, i32 0, i32 0
  store i32 %623, i32* %625, align 4
  store i32 %623, i32* %4, align 4
  br label %809

626:                                              ; preds = %609
  %627 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %628 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %627, i32 0, i32 1
  %629 = call i32 @r_strbuf_set(i32* %628, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  br label %634

630:                                              ; preds = %609
  %631 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %632 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %631, i32 0, i32 1
  %633 = call i32 @r_strbuf_set(i32* %632, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  br label %634

634:                                              ; preds = %609, %630, %626
  %635 = load i32*, i32** %9, align 8
  %636 = getelementptr inbounds i32, i32* %635, i32 1
  store i32* %636, i32** %9, align 8
  %637 = load i32*, i32** %9, align 8
  %638 = load i32, i32* %7, align 4
  %639 = sext i32 %638 to i64
  %640 = load i32*, i32** %9, align 8
  %641 = load i32*, i32** %6, align 8
  %642 = ptrtoint i32* %640 to i64
  %643 = ptrtoint i32* %641 to i64
  %644 = sub i64 %642, %643
  %645 = sdiv exact i64 %644, 4
  %646 = sub nsw i64 %639, %645
  %647 = trunc i64 %646 to i32
  %648 = call i32 @test_ws_token_exist(i32* %637, i32 10, i32 %647)
  %649 = icmp eq i32 -1, %648
  br i1 %649, label %650, label %656

650:                                              ; preds = %634
  %651 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %652 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %651, i32 0, i32 1
  %653 = call i32 @r_strbuf_set(i32* %652, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %654 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %655 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %654, i32 0, i32 0
  store i32 0, i32* %655, align 4
  store i32 0, i32* %4, align 4
  br label %809

656:                                              ; preds = %634
  %657 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %658 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %657, i32 0, i32 1
  %659 = call i32 @r_strbuf_length(i32* %658)
  %660 = icmp eq i32 %659, 2
  br i1 %660, label %661, label %679

661:                                              ; preds = %656
  %662 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %663 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %662, i32 0, i32 1
  %664 = load i32*, i32** %9, align 8
  %665 = load i32, i32* %7, align 4
  %666 = sext i32 %665 to i64
  %667 = load i32*, i32** %9, align 8
  %668 = load i32*, i32** %6, align 8
  %669 = ptrtoint i32* %667 to i64
  %670 = ptrtoint i32* %668 to i64
  %671 = sub i64 %669, %670
  %672 = sdiv exact i64 %671, 4
  %673 = sub nsw i64 %666, %672
  %674 = sub nsw i64 %673, 1
  %675 = trunc i64 %674 to i32
  %676 = call i32 @get_ws_val(i32* %664, i32 %675)
  %677 = call i8* @sdb_fmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %676)
  %678 = call i32 @r_strbuf_append(i32* %663, i8* %677)
  br label %679

679:                                              ; preds = %661, %656
  %680 = load i32*, i32** %9, align 8
  %681 = load i32*, i32** %6, align 8
  %682 = ptrtoint i32* %680 to i64
  %683 = ptrtoint i32* %681 to i64
  %684 = sub i64 %682, %683
  %685 = sdiv exact i64 %684, 4
  %686 = load i32*, i32** %9, align 8
  %687 = load i32, i32* %7, align 4
  %688 = sext i32 %687 to i64
  %689 = load i32*, i32** %9, align 8
  %690 = load i32*, i32** %6, align 8
  %691 = ptrtoint i32* %689 to i64
  %692 = ptrtoint i32* %690 to i64
  %693 = sub i64 %691, %692
  %694 = sdiv exact i64 %693, 4
  %695 = sub nsw i64 %688, %694
  %696 = trunc i64 %695 to i32
  %697 = call i32 @test_ws_token_exist(i32* %686, i32 10, i32 %696)
  %698 = sext i32 %697 to i64
  %699 = add nsw i64 %685, %698
  %700 = add nsw i64 %699, 1
  %701 = trunc i64 %700 to i32
  %702 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %703 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %702, i32 0, i32 0
  store i32 %701, i32* %703, align 4
  store i32 %701, i32* %4, align 4
  br label %809

704:                                              ; preds = %543
  %705 = load i32*, i32** %9, align 8
  %706 = getelementptr inbounds i32, i32* %705, i32 1
  store i32* %706, i32** %9, align 8
  %707 = load i32*, i32** %9, align 8
  %708 = load i32, i32* %7, align 4
  %709 = sext i32 %708 to i64
  %710 = load i32*, i32** %9, align 8
  %711 = load i32*, i32** %6, align 8
  %712 = ptrtoint i32* %710 to i64
  %713 = ptrtoint i32* %711 to i64
  %714 = sub i64 %712, %713
  %715 = sdiv exact i64 %714, 4
  %716 = sub nsw i64 %709, %715
  %717 = trunc i64 %716 to i32
  %718 = call i32* @get_ws_next_token(i32* %707, i32 %717)
  store i32* %718, i32** %9, align 8
  %719 = load i32*, i32** %9, align 8
  %720 = icmp ne i32* %719, null
  br i1 %720, label %724, label %721

721:                                              ; preds = %704
  %722 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %723 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %722, i32 0, i32 0
  store i32 0, i32* %723, align 4
  store i32 0, i32* %4, align 4
  br label %809

724:                                              ; preds = %704
  %725 = load i32*, i32** %9, align 8
  %726 = load i32, i32* %725, align 4
  switch i32 %726, label %730 [
    i32 10, label %727
    i32 9, label %728
    i32 32, label %729
  ]

727:                                              ; preds = %724
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i8** %8, align 8
  br label %730

728:                                              ; preds = %724
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8** %8, align 8
  br label %730

729:                                              ; preds = %724
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8** %8, align 8
  br label %730

730:                                              ; preds = %724, %729, %728, %727
  %731 = load i32*, i32** %9, align 8
  %732 = getelementptr inbounds i32, i32* %731, i32 1
  store i32* %732, i32** %9, align 8
  %733 = load i32*, i32** %9, align 8
  %734 = load i32, i32* %7, align 4
  %735 = sext i32 %734 to i64
  %736 = load i32*, i32** %9, align 8
  %737 = load i32*, i32** %6, align 8
  %738 = ptrtoint i32* %736 to i64
  %739 = ptrtoint i32* %737 to i64
  %740 = sub i64 %738, %739
  %741 = sdiv exact i64 %740, 4
  %742 = sub nsw i64 %735, %741
  %743 = trunc i64 %742 to i32
  %744 = call i32 @test_ws_token_exist(i32* %733, i32 10, i32 %743)
  %745 = icmp eq i32 -1, %744
  br i1 %745, label %746, label %752

746:                                              ; preds = %730
  %747 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %748 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %747, i32 0, i32 1
  %749 = call i32 @r_strbuf_set(i32* %748, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0))
  %750 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %751 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %750, i32 0, i32 0
  store i32 0, i32* %751, align 4
  store i32 0, i32* %4, align 4
  br label %809

752:                                              ; preds = %730
  %753 = load i8*, i8** %8, align 8
  %754 = icmp ne i8* %753, null
  br i1 %754, label %755, label %760

755:                                              ; preds = %752
  %756 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %757 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %756, i32 0, i32 1
  %758 = load i8*, i8** %8, align 8
  %759 = call i32 @r_strbuf_set(i32* %757, i8* %758)
  br label %760

760:                                              ; preds = %755, %752
  %761 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %762 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %761, i32 0, i32 1
  %763 = load i32*, i32** %9, align 8
  %764 = load i32, i32* %7, align 4
  %765 = sext i32 %764 to i64
  %766 = load i32*, i32** %9, align 8
  %767 = load i32*, i32** %6, align 8
  %768 = ptrtoint i32* %766 to i64
  %769 = ptrtoint i32* %767 to i64
  %770 = sub i64 %768, %769
  %771 = sdiv exact i64 %770, 4
  %772 = sub nsw i64 %765, %771
  %773 = sub nsw i64 %772, 1
  %774 = trunc i64 %773 to i32
  %775 = call i32 @get_ws_val(i32* %763, i32 %774)
  %776 = call i8* @sdb_fmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %775)
  %777 = call i32 @r_strbuf_append(i32* %762, i8* %776)
  %778 = load i32*, i32** %9, align 8
  %779 = load i32*, i32** %6, align 8
  %780 = ptrtoint i32* %778 to i64
  %781 = ptrtoint i32* %779 to i64
  %782 = sub i64 %780, %781
  %783 = sdiv exact i64 %782, 4
  %784 = load i32*, i32** %9, align 8
  %785 = load i32, i32* %7, align 4
  %786 = sext i32 %785 to i64
  %787 = load i32*, i32** %9, align 8
  %788 = load i32*, i32** %6, align 8
  %789 = ptrtoint i32* %787 to i64
  %790 = ptrtoint i32* %788 to i64
  %791 = sub i64 %789, %790
  %792 = sdiv exact i64 %791, 4
  %793 = sub nsw i64 %786, %792
  %794 = trunc i64 %793 to i32
  %795 = call i32 @test_ws_token_exist(i32* %784, i32 10, i32 %794)
  %796 = sext i32 %795 to i64
  %797 = add nsw i64 %783, %796
  %798 = add nsw i64 %797, 1
  %799 = trunc i64 %798 to i32
  %800 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %801 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %800, i32 0, i32 0
  store i32 %799, i32* %801, align 4
  store i32 %799, i32* %4, align 4
  br label %809

802:                                              ; preds = %543
  br label %803

803:                                              ; preds = %802, %3
  %804 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %805 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %804, i32 0, i32 1
  %806 = call i32 @r_strbuf_set(i32* %805, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  %807 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %808 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %807, i32 0, i32 0
  store i32 0, i32* %808, align 4
  store i32 0, i32* %4, align 4
  br label %809

809:                                              ; preds = %803, %760, %746, %721, %679, %650, %612, %606, %578, %563, %540, %521, %502, %475, %452, %417, %402, %388, %382, %350, %336, %330, %307, %275, %257, %209, %180, %149, %135, %104, %86, %53, %50, %32, %18, %15
  %810 = load i32, i32* %4, align 4
  ret i32 %810
}

declare dso_local i32 @get_ws_optype(i32*, i32) #1

declare dso_local i32 @r_strbuf_set(i32*, i8*) #1

declare dso_local i32* @get_ws_next_token(i32*, i32) #1

declare dso_local i32 @test_ws_token_exist(i32*, i32, i32) #1

declare dso_local i8* @sdb_fmt(i8*, i32) #1

declare dso_local i32 @r_strbuf_length(i32*) #1

declare dso_local i32 @r_strbuf_append(i32*, i8*) #1

declare dso_local i32 @get_ws_val(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
