; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_proc_read_wanmib.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_proc_read_wanmib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"dsl0\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dslfast0\0A\00", align 1
@__const.proc_read_wanmib.title = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [35 x i8] c"  wrx_correct_pdu            = %d\0A\00", align 1
@WAN_MIB_TABLE = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"  wrx_correct_pdu_bytes      = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"  wrx_tccrc_err_pdu          = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"  wrx_tccrc_err_pdu_bytes    = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"  wrx_ethcrc_err_pdu         = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"  wrx_ethcrc_err_pdu_bytes   = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"  wrx_nodesc_drop_pdu        = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"  wrx_len_violation_drop_pdu = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"  wrx_idle_bytes             = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"  wrx_nonidle_cw             = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"  wrx_idle_cw                = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"  wrx_err_cw                 = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"  wtx_total_pdu              = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"  wtx_total_bytes            = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_read_wanmib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_read_wanmib(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i8*], align 16
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = bitcast [2 x i8*]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([2 x i8*]* @__const.proc_read_wanmib.title to i8*), i64 16, i1 false)
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %291, %6
  %18 = load i32, i32* %14, align 4
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i8** %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %294

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 (i8*, i8*, ...) @sprintf(i8* %29, i8* %33)
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i64 (i8*, i8*, ...) @sprintf(i8* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %13, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i64 (i8*, i8*, ...) @sprintf(i8* %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %13, align 4
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i64 (i8*, i8*, ...) @sprintf(i8* %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %13, align 4
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i64 (i8*, i8*, ...) @sprintf(i8* %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %13, align 4
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = call i64 (i8*, i8*, ...) @sprintf(i8* %153, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %13, align 4
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = call i64 (i8*, i8*, ...) @sprintf(i8* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %13, align 4
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 4
  %196 = call i64 (i8*, i8*, ...) @sprintf(i8* %189, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %196
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %13, align 4
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 4
  %214 = call i64 (i8*, i8*, ...) @sprintf(i8* %207, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %216, %214
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %13, align 4
  %219 = load i8*, i8** %7, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %227 = load i32, i32* %14, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 10
  %231 = load i32, i32* %230, align 4
  %232 = call i64 (i8*, i8*, ...) @sprintf(i8* %225, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %13, align 4
  %237 = load i8*, i8** %7, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 11
  %249 = load i32, i32* %248, align 4
  %250 = call i64 (i8*, i8*, ...) @sprintf(i8* %243, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = add nsw i64 %252, %250
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %13, align 4
  %255 = load i8*, i8** %7, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 12
  %267 = load i32, i32* %266, align 4
  %268 = call i64 (i8*, i8*, ...) @sprintf(i8* %261, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* %13, align 4
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %270, %268
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %13, align 4
  %273 = load i8*, i8** %7, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %276, i64 %278
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WAN_MIB_TABLE, align 8
  %281 = load i32, i32* %14, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 13
  %285 = load i32, i32* %284, align 4
  %286 = call i64 (i8*, i8*, ...) @sprintf(i8* %279, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 %285)
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %288, %286
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %13, align 4
  br label %291

291:                                              ; preds = %22
  %292 = load i32, i32* %14, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %14, align 4
  br label %17

294:                                              ; preds = %17
  %295 = load i32*, i32** %11, align 8
  store i32 1, i32* %295, align 4
  %296 = load i32, i32* %13, align 4
  ret i32 %296
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i64 @sprintf(i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
