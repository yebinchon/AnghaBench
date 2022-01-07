; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_ppe_send.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_ppe_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.tx_descriptor*, i32, %struct.sk_buff** }
%struct.tx_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.atm_vcc = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.tx_inband_header = type { i32, i64, i32, i32, i32, i64, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@g_showtime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"not in showtime\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DATA_BUFFER_ALIGNMENT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"pskb_expand_head failed.\0A\00", align 1
@TX_INBAND_HEADER_LENGTH = common dso_local global i64 0, align 8
@ATM_AAL5 = common dso_local global i64 0, align 8
@aal5_fill_pattern = common dso_local global i32 0, align 4
@ATM_ATMOPT_CLP = common dso_local global i32 0, align 4
@ATM_PTI_US0 = common dso_local global i32 0, align 4
@g_atm_priv_data = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"ALLOC_TX_CONNECTION_FAIL\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"FIND_VCC_FAIL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.sk_buff*)* @ppe_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppe_send(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.tx_descriptor, align 4
  %14 = alloca %struct.tx_inband_header*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %17 = bitcast %struct.tx_descriptor* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 36, i1 false)
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %19 = icmp eq %struct.atm_vcc* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = icmp eq %struct.sk_buff* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %302

26:                                               ; preds = %20
  %27 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %28 = call i32 @find_vcc(%struct.atm_vcc* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %270

34:                                               ; preds = %26
  %35 = load i32, i32* @g_showtime, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %277

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @DATA_BUFFER_ALIGNMENT, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 64, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @skb_clone_writable(%struct.sk_buff* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %41
  store i32 0, i32* %15, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @skb_headroom(%struct.sk_buff* %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @skb_headroom(%struct.sk_buff* %64)
  %66 = sub nsw i32 %63, %65
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @GFP_ATOMIC, align 4
  %71 = call i32 @pskb_expand_head(%struct.sk_buff* %68, i32 %69, i32 0, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %78 = call i32 @atm_free_tx_skb_vcc(%struct.sk_buff* %76, %struct.atm_vcc* %77)
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %3, align 4
  br label %302

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %41
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %11, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @TX_INBAND_HEADER_LENGTH, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i64 @skb_push(%struct.sk_buff* %85, i64 %89)
  %91 = inttoptr i64 %90 to i8*
  %92 = bitcast i8* %91 to %struct.tx_inband_header*
  store %struct.tx_inband_header* %92, %struct.tx_inband_header** %14, align 8
  %93 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %94 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ATM_AAL5, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %145

99:                                               ; preds = %81
  %100 = load %struct.tx_inband_header*, %struct.tx_inband_header** %14, align 8
  %101 = getelementptr inbounds %struct.tx_inband_header, %struct.tx_inband_header* %100, i32 0, i32 8
  store i64 0, i64* %101, align 8
  %102 = load %struct.tx_inband_header*, %struct.tx_inband_header** %14, align 8
  %103 = getelementptr inbounds %struct.tx_inband_header, %struct.tx_inband_header* %102, i32 0, i32 7
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* @aal5_fill_pattern, align 4
  %105 = load %struct.tx_inband_header*, %struct.tx_inband_header** %14, align 8
  %106 = getelementptr inbounds %struct.tx_inband_header, %struct.tx_inband_header* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  %107 = load %struct.tx_inband_header*, %struct.tx_inband_header** %14, align 8
  %108 = getelementptr inbounds %struct.tx_inband_header, %struct.tx_inband_header* %107, i32 0, i32 5
  store i64 0, i64* %108, align 8
  %109 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %110 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ATM_ATMOPT_CLP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 1, i32 0
  %117 = load %struct.tx_inband_header*, %struct.tx_inband_header** %14, align 8
  %118 = getelementptr inbounds %struct.tx_inband_header, %struct.tx_inband_header* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @ATM_PTI_US0, align 4
  %120 = load %struct.tx_inband_header*, %struct.tx_inband_header** %14, align 8
  %121 = getelementptr inbounds %struct.tx_inband_header, %struct.tx_inband_header* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %123 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.tx_inband_header*, %struct.tx_inband_header** %14, align 8
  %126 = getelementptr inbounds %struct.tx_inband_header, %struct.tx_inband_header* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %128 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.tx_inband_header*, %struct.tx_inband_header** %14, align 8
  %131 = getelementptr inbounds %struct.tx_inband_header, %struct.tx_inband_header* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.tx_inband_header*, %struct.tx_inband_header** %14, align 8
  %133 = getelementptr inbounds %struct.tx_inband_header, %struct.tx_inband_header* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = lshr i32 %137, 2
  %139 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %13, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* %11, align 4
  %141 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %13, i32 0, i32 1
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  %143 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %13, i32 0, i32 2
  store i32 %142, i32* %143, align 4
  %144 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %13, i32 0, i32 3
  store i32 0, i32* %144, align 4
  br label %159

145:                                              ; preds = %81
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = lshr i32 %149, 2
  %151 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %13, i32 0, i32 0
  store i32 %150, i32* %151, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %13, i32 0, i32 1
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* %9, align 4
  %157 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %13, i32 0, i32 2
  store i32 %156, i32* %157, align 4
  %158 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %13, i32 0, i32 3
  store i32 1, i32* %158, align 4
  br label %159

159:                                              ; preds = %145, %99
  %160 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %13, i32 0, i32 4
  store i32 1, i32* %160, align 4
  %161 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %13, i32 0, i32 5
  store i32 1, i32* %161, align 4
  %162 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %13, i32 0, i32 7
  store i32 1, i32* %162, align 4
  %163 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %13, i32 0, i32 6
  store i32 1, i32* %163, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 2), align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i64, i64* %12, align 8
  %170 = call i32 @spin_lock_irqsave(i32* %168, i64 %169)
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @get_tx_desc(i32 %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %159
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 2), align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i64, i64* %12, align 8
  %182 = call i32 @spin_unlock_irqrestore(i32* %180, i64 %181)
  %183 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %184 = load i32, i32* @EIO, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %6, align 4
  br label %277

186:                                              ; preds = %159
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 2), align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 2
  %192 = load %struct.sk_buff**, %struct.sk_buff*** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %192, i64 %194
  %196 = load %struct.sk_buff*, %struct.sk_buff** %195, align 8
  %197 = icmp ne %struct.sk_buff* %196, null
  br i1 %197, label %198, label %210

198:                                              ; preds = %186
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 2), align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 2
  %204 = load %struct.sk_buff**, %struct.sk_buff*** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %204, i64 %206
  %208 = load %struct.sk_buff*, %struct.sk_buff** %207, align 8
  %209 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %208)
  br label %210

210:                                              ; preds = %198, %186
  %211 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 2), align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 2
  %217 = load %struct.sk_buff**, %struct.sk_buff*** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %217, i64 %219
  store %struct.sk_buff* %211, %struct.sk_buff** %220, align 8
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 2), align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  %226 = load i64, i64* %12, align 8
  %227 = call i32 @spin_unlock_irqrestore(i32* %225, i64 %226)
  %228 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %229 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %228, i32 0, i32 1
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = icmp ne %struct.TYPE_7__* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %210
  %233 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %234 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %233, i32 0, i32 1
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  %237 = call i32 @atomic_inc(i32* %236)
  br label %238

238:                                              ; preds = %232, %210
  %239 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %240 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @ATM_AAL5, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 3), align 8
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 3), align 8
  br label %248

248:                                              ; preds = %245, %238
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 2), align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load %struct.tx_descriptor*, %struct.tx_descriptor** %253, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %254, i64 %256
  %258 = bitcast %struct.tx_descriptor* %257 to i8*
  %259 = bitcast %struct.tx_descriptor* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %258, i8* align 4 %259, i64 36, i1 false)
  %260 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %261 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %264 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @dma_cache_wback(i64 %262, i32 %265)
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @mailbox_signal(i32 %267, i32 1)
  %269 = call i32 (...) @adsl_led_flash()
  store i32 0, i32* %3, align 4
  br label %302

270:                                              ; preds = %31
  %271 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %272 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 1), align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 1), align 4
  %274 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %275 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %274)
  %276 = load i32, i32* %6, align 4
  store i32 %276, i32* %3, align 4
  br label %302

277:                                              ; preds = %175, %37
  %278 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %279 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @ATM_AAL5, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %277
  %285 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 0), align 8
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_atm_priv_data, i32 0, i32 0), align 8
  br label %287

287:                                              ; preds = %284, %277
  %288 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %289 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %288, i32 0, i32 1
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %289, align 8
  %291 = icmp ne %struct.TYPE_7__* %290, null
  br i1 %291, label %292, label %298

292:                                              ; preds = %287
  %293 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %294 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %293, i32 0, i32 1
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = call i32 @atomic_inc(i32* %296)
  br label %298

298:                                              ; preds = %292, %287
  %299 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %300 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %299)
  %301 = load i32, i32* %6, align 4
  store i32 %301, i32* %3, align 4
  br label %302

302:                                              ; preds = %298, %270, %248, %74, %23
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @find_vcc(%struct.atm_vcc*) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @skb_clone_writable(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #2

declare dso_local i32 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #2

declare dso_local i32 @printk(i8*) #2

declare dso_local i32 @atm_free_tx_skb_vcc(%struct.sk_buff*, %struct.atm_vcc*) #2

declare dso_local i64 @skb_push(%struct.sk_buff*, i64) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @get_tx_desc(i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #2

declare dso_local i32 @atomic_inc(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dma_cache_wback(i64, i32) #2

declare dso_local i32 @mailbox_signal(i32, i32) #2

declare dso_local i32 @adsl_led_flash(...) #2

declare dso_local i32 @pr_err(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
