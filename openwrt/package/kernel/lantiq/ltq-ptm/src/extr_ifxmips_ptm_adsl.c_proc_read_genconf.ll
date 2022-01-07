; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_proc_read_genconf.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_proc_read_genconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"CFG_WAN_WRDES_DELAY (0x%08X): %d\0A\00", align 1
@CFG_WAN_WRDES_DELAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"CFG_WRX_DMACH_ON    (0x%08X):\00", align 1
@CFG_WRX_DMACH_ON = common dso_local global i64 0, align 8
@MAX_RX_DMA_CHANNEL_NUMBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" %d - %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"on \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"CFG_WTX_DMACH_ON    (0x%08X):\00", align 1
@CFG_WTX_DMACH_ON = common dso_local global i64 0, align 8
@MAX_TX_DMA_CHANNEL_NUMBER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"CFG_WRX_LOOK_BITTH  (0x%08X): %d\0A\00", align 1
@CFG_WRX_LOOK_BITTH = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [80 x i8] c"CFG_ETH_EFMTC_CRC   (0x%08X): rx_tc_crc_len    - %2d,  rx_tc_crc_check    - %s\0A\00", align 1
@CFG_ETH_EFMTC_CRC = common dso_local global %struct.TYPE_10__* null, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c" on\00", align 1
@.str.10 = private unnamed_addr constant [82 x i8] c"                                  rx_eth_crc_check - %s, rx_eth_crc_present - %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [84 x i8] c"                                  tx_tc_crc_len    - %2d,  tx_tc_crc_gen      - %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"                                  tx_eth_crc_gen   - %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"RX Port:\0A\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"  %d (0x%08X). mfs - %5d, dmach - %d, local_state - %d, partner_state - %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"RX DMA Channel:\0A\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"  %d (0x%08X). desba - 0x%08X (0x%08X), deslen - %d, vlddes - %d\0A\00", align 1
@KSEG1 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"TX Port:\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"  %d (0x%08X). tx_cwth2 - %d, tx_cwth1 - %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"TX DMA Channel:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_read_genconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_read_genconf(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [2048 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i8**, i8*** %9, align 8
  store i8* %24, i8** %25, align 8
  store i8* %24, i8** %16, align 8
  %26 = call i32 (...) @__sync()
  %27 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %28 = load i32, i32* %18, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i64, i64* @CFG_WAN_WRDES_DELAY, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* @CFG_WAN_WRDES_DELAY, align 8
  %34 = call i32 @IFX_REG_R32(i64 %33)
  %35 = call i64 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34)
  %36 = load i32, i32* %18, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %18, align 4
  %40 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %41 = load i32, i32* %18, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i64, i64* @CFG_WRX_DMACH_ON, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i64 1, i64* %20, align 8
  br label %51

51:                                               ; preds = %74, %6
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* @MAX_RX_DMA_CHANNEL_NUMBER, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %19, align 4
  %61 = load i64, i64* @CFG_WRX_DMACH_ON, align 8
  %62 = call i32 @IFX_REG_R32(i64 %61)
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %20, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %69 = call i64 (i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %60, i8* %68)
  %70 = load i32, i32* %18, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %55
  %75 = load i32, i32* %19, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %19, align 4
  %77 = load i64, i64* %20, align 8
  %78 = shl i64 %77, 1
  store i64 %78, i64* %20, align 8
  br label %51

79:                                               ; preds = %51
  %80 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = call i64 (i8*, i8*, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %18, align 4
  %89 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i64, i64* @CFG_WTX_DMACH_ON, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i64 (i8*, i8*, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i64 1, i64* %20, align 8
  br label %100

100:                                              ; preds = %123, %79
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* @MAX_TX_DMA_CHANNEL_NUMBER, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %100
  %105 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i32, i32* %19, align 4
  %110 = load i64, i64* @CFG_WTX_DMACH_ON, align 8
  %111 = call i32 @IFX_REG_R32(i64 %110)
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %20, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %118 = call i64 (i8*, i8*, ...) @sprintf(i8* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %109, i8* %117)
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %18, align 4
  br label %123

123:                                              ; preds = %104
  %124 = load i32, i32* %19, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %19, align 4
  %126 = load i64, i64* %20, align 8
  %127 = shl i64 %126, 1
  store i64 %127, i64* %20, align 8
  br label %100

128:                                              ; preds = %100
  %129 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = call i64 (i8*, i8*, ...) @sprintf(i8* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %18, align 4
  %138 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i64, i64* @CFG_WRX_LOOK_BITTH, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i64, i64* @CFG_WRX_LOOK_BITTH, align 8
  %145 = call i32 @IFX_REG_R32(i64 %144)
  %146 = call i64 (i8*, i8*, ...) @sprintf(i8* %141, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %143, i32 %145)
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %18, align 4
  %151 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %156 = ptrtoint %struct.TYPE_10__* %155 to i32
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %166 = call i64 (i8*, i8*, ...) @sprintf(i8* %154, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.8, i64 0, i64 0), i32 %156, i32 %159, i8* %165)
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %18, align 4
  %171 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %187 = call i64 (i8*, i8*, ...) @sprintf(i8* %174, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.10, i64 0, i64 0), i8* %180, i8* %186)
  %188 = load i32, i32* %18, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %18, align 4
  %192 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %205 = call i64 (i8*, i8*, ...) @sprintf(i8* %195, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.11, i64 0, i64 0), i32 %198, i8* %204)
  %206 = load i32, i32* %18, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %207, %205
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %18, align 4
  %210 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %211 = load i32, i32* %18, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %220 = call i64 (i8*, i8*, ...) @sprintf(i8* %213, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0), i8* %219)
  %221 = load i32, i32* %18, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %222, %220
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %18, align 4
  %225 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %226 = load i32, i32* %18, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = call i64 (i8*, i8*, ...) @sprintf(i8* %228, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %230 = load i32, i32* %18, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %229
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %234

234:                                              ; preds = %268, %128
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* @MAX_RX_DMA_CHANNEL_NUMBER, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %271

238:                                              ; preds = %234
  %239 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %240 = load i32, i32* %18, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i32, i32* %19, align 4
  %244 = load i32, i32* %19, align 4
  %245 = call %struct.TYPE_8__* @WRX_PORT_CONFIG(i32 %244)
  %246 = ptrtoint %struct.TYPE_8__* %245 to i32
  %247 = load i32, i32* %19, align 4
  %248 = call %struct.TYPE_8__* @WRX_PORT_CONFIG(i32 %247)
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %19, align 4
  %252 = call %struct.TYPE_8__* @WRX_PORT_CONFIG(i32 %251)
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %19, align 4
  %256 = call %struct.TYPE_8__* @WRX_PORT_CONFIG(i32 %255)
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %19, align 4
  %260 = call %struct.TYPE_8__* @WRX_PORT_CONFIG(i32 %259)
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = call i64 (i8*, i8*, ...) @sprintf(i8* %242, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i64 0, i64 0), i32 %243, i32 %246, i32 %250, i32 %254, i32 %258, i32 %262)
  %264 = load i32, i32* %18, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %263
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %18, align 4
  br label %268

268:                                              ; preds = %238
  %269 = load i32, i32* %19, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %19, align 4
  br label %234

271:                                              ; preds = %234
  %272 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %273 = load i32, i32* %18, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = call i64 (i8*, i8*, ...) @sprintf(i8* %275, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %277 = load i32, i32* %18, align 4
  %278 = sext i32 %277 to i64
  %279 = add nsw i64 %278, %276
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %281

281:                                              ; preds = %318, %271
  %282 = load i32, i32* %19, align 4
  %283 = load i32, i32* @MAX_RX_DMA_CHANNEL_NUMBER, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %321

285:                                              ; preds = %281
  %286 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %287 = load i32, i32* %18, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %286, i64 %288
  %290 = load i32, i32* %19, align 4
  %291 = load i32, i32* %19, align 4
  %292 = call %struct.TYPE_9__* @WRX_DMA_CHANNEL_CONFIG(i32 %291)
  %293 = ptrtoint %struct.TYPE_9__* %292 to i32
  %294 = load i32, i32* %19, align 4
  %295 = call %struct.TYPE_9__* @WRX_DMA_CHANNEL_CONFIG(i32 %294)
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %19, align 4
  %299 = call %struct.TYPE_9__* @WRX_DMA_CHANNEL_CONFIG(i32 %298)
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = shl i32 %301, 2
  %303 = load i32, i32* @KSEG1, align 4
  %304 = or i32 %302, %303
  %305 = load i32, i32* %19, align 4
  %306 = call %struct.TYPE_9__* @WRX_DMA_CHANNEL_CONFIG(i32 %305)
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %19, align 4
  %310 = call %struct.TYPE_9__* @WRX_DMA_CHANNEL_CONFIG(i32 %309)
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = call i64 (i8*, i8*, ...) @sprintf(i8* %289, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i64 0, i64 0), i32 %290, i32 %293, i32 %297, i32 %304, i32 %308, i32 %312)
  %314 = load i32, i32* %18, align 4
  %315 = sext i32 %314 to i64
  %316 = add nsw i64 %315, %313
  %317 = trunc i64 %316 to i32
  store i32 %317, i32* %18, align 4
  br label %318

318:                                              ; preds = %285
  %319 = load i32, i32* %19, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %19, align 4
  br label %281

321:                                              ; preds = %281
  %322 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %323 = load i32, i32* %18, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %322, i64 %324
  %326 = call i64 (i8*, i8*, ...) @sprintf(i8* %325, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %327 = load i32, i32* %18, align 4
  %328 = sext i32 %327 to i64
  %329 = add nsw i64 %328, %326
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %331

331:                                              ; preds = %357, %321
  %332 = load i32, i32* %19, align 4
  %333 = load i32, i32* @MAX_TX_DMA_CHANNEL_NUMBER, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %360

335:                                              ; preds = %331
  %336 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %337 = load i32, i32* %18, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  %340 = load i32, i32* %19, align 4
  %341 = load i32, i32* %19, align 4
  %342 = call %struct.TYPE_6__* @WTX_PORT_CONFIG(i32 %341)
  %343 = ptrtoint %struct.TYPE_6__* %342 to i32
  %344 = load i32, i32* %19, align 4
  %345 = call %struct.TYPE_6__* @WTX_PORT_CONFIG(i32 %344)
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %19, align 4
  %349 = call %struct.TYPE_6__* @WTX_PORT_CONFIG(i32 %348)
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i64 (i8*, i8*, ...) @sprintf(i8* %339, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i32 %340, i32 %343, i32 %347, i32 %351)
  %353 = load i32, i32* %18, align 4
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %354, %352
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %18, align 4
  br label %357

357:                                              ; preds = %335
  %358 = load i32, i32* %19, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %19, align 4
  br label %331

360:                                              ; preds = %331
  %361 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %362 = load i32, i32* %18, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %361, i64 %363
  %365 = call i64 (i8*, i8*, ...) @sprintf(i8* %364, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %366 = load i32, i32* %18, align 4
  %367 = sext i32 %366 to i64
  %368 = add nsw i64 %367, %365
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %370

370:                                              ; preds = %407, %360
  %371 = load i32, i32* %19, align 4
  %372 = load i32, i32* @MAX_TX_DMA_CHANNEL_NUMBER, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %410

374:                                              ; preds = %370
  %375 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %376 = load i32, i32* %18, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, i8* %375, i64 %377
  %379 = load i32, i32* %19, align 4
  %380 = load i32, i32* %19, align 4
  %381 = call %struct.TYPE_7__* @WTX_DMA_CHANNEL_CONFIG(i32 %380)
  %382 = ptrtoint %struct.TYPE_7__* %381 to i32
  %383 = load i32, i32* %19, align 4
  %384 = call %struct.TYPE_7__* @WTX_DMA_CHANNEL_CONFIG(i32 %383)
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* %19, align 4
  %388 = call %struct.TYPE_7__* @WTX_DMA_CHANNEL_CONFIG(i32 %387)
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = shl i32 %390, 2
  %392 = load i32, i32* @KSEG1, align 4
  %393 = or i32 %391, %392
  %394 = load i32, i32* %19, align 4
  %395 = call %struct.TYPE_7__* @WTX_DMA_CHANNEL_CONFIG(i32 %394)
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %19, align 4
  %399 = call %struct.TYPE_7__* @WTX_DMA_CHANNEL_CONFIG(i32 %398)
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 4
  %402 = call i64 (i8*, i8*, ...) @sprintf(i8* %378, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i64 0, i64 0), i32 %379, i32 %382, i32 %386, i32 %393, i32 %397, i32 %401)
  %403 = load i32, i32* %18, align 4
  %404 = sext i32 %403 to i64
  %405 = add nsw i64 %404, %402
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %18, align 4
  br label %407

407:                                              ; preds = %374
  %408 = load i32, i32* %19, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %19, align 4
  br label %370

410:                                              ; preds = %370
  %411 = load i32, i32* %14, align 4
  %412 = load i32, i32* %10, align 4
  %413 = icmp sle i32 %411, %412
  br i1 %413, label %414, label %444

414:                                              ; preds = %410
  %415 = load i32, i32* %14, align 4
  %416 = load i32, i32* %18, align 4
  %417 = add nsw i32 %415, %416
  %418 = load i32, i32* %10, align 4
  %419 = icmp sgt i32 %417, %418
  br i1 %419, label %420, label %444

420:                                              ; preds = %414
  %421 = load i8*, i8** %16, align 8
  %422 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %423 = load i32, i32* %10, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %422, i64 %424
  %426 = load i32, i32* %14, align 4
  %427 = sext i32 %426 to i64
  %428 = sub i64 0, %427
  %429 = getelementptr inbounds i8, i8* %425, i64 %428
  %430 = load i32, i32* %14, align 4
  %431 = load i32, i32* %18, align 4
  %432 = add nsw i32 %430, %431
  %433 = load i32, i32* %10, align 4
  %434 = sub nsw i32 %432, %433
  %435 = call i32 @memcpy(i8* %421, i8* %429, i32 %434)
  %436 = load i32, i32* %14, align 4
  %437 = load i32, i32* %18, align 4
  %438 = add nsw i32 %436, %437
  %439 = load i32, i32* %10, align 4
  %440 = sub nsw i32 %438, %439
  %441 = load i8*, i8** %16, align 8
  %442 = sext i32 %440 to i64
  %443 = getelementptr inbounds i8, i8* %441, i64 %442
  store i8* %443, i8** %16, align 8
  br label %458

444:                                              ; preds = %414, %410
  %445 = load i32, i32* %14, align 4
  %446 = load i32, i32* %10, align 4
  %447 = icmp sgt i32 %445, %446
  br i1 %447, label %448, label %457

448:                                              ; preds = %444
  %449 = load i8*, i8** %16, align 8
  %450 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %451 = load i32, i32* %18, align 4
  %452 = call i32 @memcpy(i8* %449, i8* %450, i32 %451)
  %453 = load i32, i32* %18, align 4
  %454 = load i8*, i8** %16, align 8
  %455 = sext i32 %453 to i64
  %456 = getelementptr inbounds i8, i8* %454, i64 %455
  store i8* %456, i8** %16, align 8
  br label %457

457:                                              ; preds = %448, %444
  br label %458

458:                                              ; preds = %457, %420
  %459 = load i32, i32* %18, align 4
  %460 = load i32, i32* %14, align 4
  %461 = add nsw i32 %460, %459
  store i32 %461, i32* %14, align 4
  %462 = load i32, i32* %14, align 4
  %463 = load i32, i32* %15, align 4
  %464 = icmp sge i32 %462, %463
  br i1 %464, label %465, label %466

465:                                              ; preds = %458
  br label %471

466:                                              ; preds = %458
  %467 = load i32*, i32** %12, align 8
  store i32 1, i32* %467, align 4
  %468 = load i32, i32* %14, align 4
  %469 = load i32, i32* %10, align 4
  %470 = sub nsw i32 %468, %469
  store i32 %470, i32* %7, align 4
  br label %477

471:                                              ; preds = %465
  %472 = load i32, i32* %14, align 4
  %473 = load i32, i32* %18, align 4
  %474 = sub nsw i32 %472, %473
  %475 = load i32, i32* %10, align 4
  %476 = sub nsw i32 %474, %475
  store i32 %476, i32* %7, align 4
  br label %477

477:                                              ; preds = %471, %466
  %478 = load i32, i32* %7, align 4
  ret i32 %478
}

declare dso_local i32 @__sync(...) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @IFX_REG_R32(i64) #1

declare dso_local %struct.TYPE_8__* @WRX_PORT_CONFIG(i32) #1

declare dso_local %struct.TYPE_9__* @WRX_DMA_CHANNEL_CONFIG(i32) #1

declare dso_local %struct.TYPE_6__* @WTX_PORT_CONFIG(i32) #1

declare dso_local %struct.TYPE_7__* @WTX_DMA_CHANNEL_CONFIG(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
