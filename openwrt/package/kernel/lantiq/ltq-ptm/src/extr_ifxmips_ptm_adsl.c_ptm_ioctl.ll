; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_ptm_ioctl.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_ptm_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ifreq = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }

@g_net_dev = common dso_local global %struct.net_device** null, align 8
@.str = private unnamed_addr constant [24 x i8] c"ndev = %d (wrong value)\00", align 1
@WAN_MIB_TABLE = common dso_local global %struct.TYPE_9__* null, align 8
@CFG_ETH_EFMTC_CRC = common dso_local global %struct.TYPE_10__* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ptm_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptm_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.net_device**, %struct.net_device*** @g_net_dev, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.net_device** %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.net_device**, %struct.net_device*** @g_net_dev, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.net_device*, %struct.net_device** %15, i64 %17
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = icmp ne %struct.net_device* %19, %20
  br label %22

22:                                               ; preds = %14, %9
  %23 = phi i1 [ false, %9 ], [ %21, %14 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %9

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.net_device**, %struct.net_device*** @g_net_dev, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.net_device** %33)
  %35 = icmp slt i32 %32, %34
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i1 [ false, %28 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ASSERT(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %309 [
    i32 129, label %42
    i32 128, label %86
    i32 131, label %138
    i32 130, label %195
  ]

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** @WAN_MIB_TABLE, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %50 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.TYPE_7__*
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  store i32 %48, i32* %53, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @WAN_MIB_TABLE, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %61 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_7__*
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  store i32 %59, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @WAN_MIB_TABLE, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %72 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.TYPE_7__*
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 %70, i32* %75, align 4
  %76 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %77 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.TYPE_7__*
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %82 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.TYPE_7__*
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  br label %312

86:                                               ; preds = %36
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @WAN_MIB_TABLE, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %94 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.TYPE_6__*
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  store i32 %92, i32* %97, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** @WAN_MIB_TABLE, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %105 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to %struct.TYPE_6__*
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i32 %103, i32* %108, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @WAN_MIB_TABLE, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** @WAN_MIB_TABLE, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %114, %120
  %122 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %123 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.TYPE_6__*
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i64 %121, i64* %126, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** @WAN_MIB_TABLE, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %134 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to %struct.TYPE_6__*
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i32 %132, i32* %137, align 8
  br label %312

138:                                              ; preds = %36
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %143 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to %struct.TYPE_8__*
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i32 %141, i32* %146, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %151 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to %struct.TYPE_8__*
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  store i32 %149, i32* %154, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %159 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to %struct.TYPE_8__*
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 2
  store i32 %157, i32* %162, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %167 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to %struct.TYPE_8__*
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  store i32 %165, i32* %170, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %175 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to %struct.TYPE_8__*
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 4
  store i32 %173, i32* %178, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %183 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = inttoptr i64 %184 to %struct.TYPE_8__*
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 5
  store i32 %181, i32* %186, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %191 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to %struct.TYPE_8__*
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 6
  store i32 %189, i32* %194, align 4
  br label %312

195:                                              ; preds = %36
  %196 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %197 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to %struct.TYPE_8__*
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 1, i32 0
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %208 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to %struct.TYPE_8__*
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i32 1, i32 0
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %219 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = inttoptr i64 %220 to %struct.TYPE_8__*
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %252

225:                                              ; preds = %195
  %226 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %227 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = inttoptr i64 %228 to %struct.TYPE_8__*
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 16
  br i1 %232, label %241, label %233

233:                                              ; preds = %225
  %234 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %235 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = inttoptr i64 %236 to %struct.TYPE_8__*
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 32
  br i1 %240, label %241, label %252

241:                                              ; preds = %233, %225
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 2
  store i32 1, i32* %243, align 4
  %244 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %245 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = inttoptr i64 %246 to %struct.TYPE_8__*
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 4
  br label %257

252:                                              ; preds = %233, %195
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 2
  store i32 0, i32* %254, align 4
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 3
  store i32 0, i32* %256, align 4
  br label %257

257:                                              ; preds = %252, %241
  %258 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %259 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = inttoptr i64 %260 to %struct.TYPE_8__*
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  %265 = zext i1 %264 to i64
  %266 = select i1 %264, i32 1, i32 0
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 4
  store i32 %266, i32* %268, align 4
  %269 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %270 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = inttoptr i64 %271 to %struct.TYPE_8__*
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %303

276:                                              ; preds = %257
  %277 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %278 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = inttoptr i64 %279 to %struct.TYPE_8__*
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 16
  br i1 %283, label %292, label %284

284:                                              ; preds = %276
  %285 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %286 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = inttoptr i64 %287 to %struct.TYPE_8__*
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 32
  br i1 %291, label %292, label %303

292:                                              ; preds = %284, %276
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 5
  store i32 1, i32* %294, align 4
  %295 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %296 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = inttoptr i64 %297 to %struct.TYPE_8__*
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 6
  store i32 %300, i32* %302, align 4
  br label %308

303:                                              ; preds = %284, %257
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 5
  store i32 0, i32* %305, align 4
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CFG_ETH_EFMTC_CRC, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 6
  store i32 0, i32* %307, align 4
  br label %308

308:                                              ; preds = %303, %292
  br label %312

309:                                              ; preds = %36
  %310 = load i32, i32* @EOPNOTSUPP, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %4, align 4
  br label %313

312:                                              ; preds = %308, %138, %86, %42
  store i32 0, i32* %4, align 4
  br label %313

313:                                              ; preds = %312, %309
  %314 = load i32, i32* %4, align 4
  ret i32 %314
}

declare dso_local i32 @ARRAY_SIZE(%struct.net_device**) #1

declare dso_local i32 @ASSERT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
