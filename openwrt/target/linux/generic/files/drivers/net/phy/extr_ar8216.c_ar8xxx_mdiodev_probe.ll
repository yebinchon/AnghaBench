; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_mdiodev_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_mdiodev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.of_device_id = type { i64 }
%struct.ar8xxx_priv = type { i32, %struct.switch_dev, i64, i32, %struct.TYPE_8__*, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.ar8xxx_chip*, i64 }
%struct.switch_dev = type { i8*, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_10__*, %struct.ar8xxx_priv*, i32, i32 }
%struct.ar8xxx_chip = type { i64, i64 }
%struct.device_node = type { i32 }

@ar8xxx_mdiodev_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"qca,mib-poll-interval\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ar8xxx-mdio\00", align 1
@ar8xxx_phy_read = common dso_local global i32 0, align 4
@ar8xxx_phy_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"mdio-bus\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"qca,phy4-mii-enable\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"%s: %s rev. %u switch registered on %s\0A\00", align 1
@ar8xxx_dev_list_lock = common dso_local global i32 0, align 4
@ar8xxx_dev_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_device*)* @ar8xxx_mdiodev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8xxx_mdiodev_probe(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.ar8xxx_priv*, align 8
  %6 = alloca %struct.switch_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %9 = load i32, i32* @ar8xxx_mdiodev_of_match, align 4
  %10 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %11 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %10, i32 0, i32 0
  %12 = call %struct.of_device_id* @of_match_device(i32 %9, %struct.TYPE_10__* %11)
  store %struct.of_device_id* %12, %struct.of_device_id** %4, align 8
  %13 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %14 = icmp ne %struct.of_device_id* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %215

18:                                               ; preds = %1
  %19 = call %struct.ar8xxx_priv* (...) @ar8xxx_create()
  store %struct.ar8xxx_priv* %19, %struct.ar8xxx_priv** %5, align 8
  %20 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %21 = icmp eq %struct.ar8xxx_priv* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %215

25:                                               ; preds = %18
  %26 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %27 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %30 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %29, i32 0, i32 4
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %30, align 8
  %31 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %32 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %31, i32 0, i32 0
  %33 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %33, i32 0, i32 6
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %34, align 8
  %35 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %36 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ar8xxx_chip*
  %39 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %40 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %39, i32 0, i32 8
  store %struct.ar8xxx_chip* %38, %struct.ar8xxx_chip** %40, align 8
  %41 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %42 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %41, i32 0, i32 6
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %47 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %46, i32 0, i32 9
  %48 = call i32 @of_property_read_u32(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %25
  %52 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %53 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %52, i32 0, i32 9
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %25
  %55 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %56 = call i32 @ar8xxx_read_id(%struct.ar8xxx_priv* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %211

60:                                               ; preds = %54
  %61 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %62 = call i32 @ar8xxx_probe_switch(%struct.ar8xxx_priv* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %211

66:                                               ; preds = %60
  %67 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %68 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %67, i32 0, i32 8
  %69 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %68, align 8
  %70 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %136

73:                                               ; preds = %66
  %74 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %75 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %74, i32 0, i32 8
  %76 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %75, align 8
  %77 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %136

80:                                               ; preds = %73
  %81 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %82 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %81, i32 0, i32 0
  %83 = call %struct.TYPE_9__* @devm_mdiobus_alloc(%struct.TYPE_10__* %82)
  %84 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %85 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %84, i32 0, i32 7
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %85, align 8
  %86 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %87 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %86, i32 0, i32 7
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %89, align 8
  %90 = load i32, i32* @ar8xxx_phy_read, align 4
  %91 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %92 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %91, i32 0, i32 7
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 5
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* @ar8xxx_phy_write, align 4
  %96 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %97 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %96, i32 0, i32 7
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 4
  store i32 %95, i32* %99, align 8
  %100 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %101 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %102 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %101, i32 0, i32 7
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  store %struct.ar8xxx_priv* %100, %struct.ar8xxx_priv** %104, align 8
  %105 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %106 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %105, i32 0, i32 0
  %107 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %108 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %107, i32 0, i32 7
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %110, align 8
  %111 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %112 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %111, i32 0, i32 7
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %117 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %118 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %117, i32 0, i32 0
  %119 = call i8* @dev_name(%struct.TYPE_10__* %118)
  %120 = call i32 @snprintf(i32 %115, i32 %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %119)
  %121 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %122 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %121, i32 0, i32 6
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.device_node* @of_get_child_by_name(i32 %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.device_node* %126, %struct.device_node** %7, align 8
  %127 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %128 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %127, i32 0, i32 7
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = load %struct.device_node*, %struct.device_node** %7, align 8
  %131 = call i32 @of_mdiobus_register(%struct.TYPE_9__* %129, %struct.device_node* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %80
  br label %211

135:                                              ; preds = %80
  br label %136

136:                                              ; preds = %135, %73, %66
  %137 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %138 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %137, i32 0, i32 1
  store %struct.switch_dev* %138, %struct.switch_dev** %6, align 8
  %139 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %140 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %139, i32 0, i32 0
  %141 = call i8* @dev_name(%struct.TYPE_10__* %140)
  %142 = load %struct.switch_dev*, %struct.switch_dev** %6, align 8
  %143 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %145 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %144, i32 0, i32 6
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @of_property_read_bool(i32 %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %136
  %152 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %153 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  %154 = load %struct.switch_dev*, %struct.switch_dev** %6, align 8
  %155 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %151, %136
  %159 = load %struct.switch_dev*, %struct.switch_dev** %6, align 8
  %160 = call i32 @register_switch(%struct.switch_dev* %159, i32* null)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %211

164:                                              ; preds = %158
  %165 = load %struct.switch_dev*, %struct.switch_dev** %6, align 8
  %166 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.switch_dev*, %struct.switch_dev** %6, align 8
  %169 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %172 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %175 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %174, i32 0, i32 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = call i8* @dev_name(%struct.TYPE_10__* %177)
  %179 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %167, i32 %170, i32 %173, i8* %178)
  %180 = call i32 @mutex_lock(i32* @ar8xxx_dev_list_lock)
  %181 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %182 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %181, i32 0, i32 3
  %183 = call i32 @list_add(i32* %182, i32* @ar8xxx_dev_list)
  %184 = call i32 @mutex_unlock(i32* @ar8xxx_dev_list_lock)
  %185 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %186 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %186, align 8
  %189 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %190 = call i32 @ar8xxx_start(%struct.ar8xxx_priv* %189)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %164
  br label %199

194:                                              ; preds = %164
  %195 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %196 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %195, i32 0, i32 0
  %197 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %198 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %196, %struct.ar8xxx_priv* %197)
  store i32 0, i32* %2, align 4
  br label %215

199:                                              ; preds = %193
  %200 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %201 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, -1
  store i64 %203, i64* %201, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %2, align 4
  br label %215

207:                                              ; preds = %199
  %208 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %209 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %208, i32 0, i32 1
  %210 = call i32 @unregister_switch(%struct.switch_dev* %209)
  br label %211

211:                                              ; preds = %207, %163, %134, %65, %59
  %212 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %213 = call i32 @ar8xxx_free(%struct.ar8xxx_priv* %212)
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %211, %205, %194, %22, %15
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_10__*) #1

declare dso_local %struct.ar8xxx_priv* @ar8xxx_create(...) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @ar8xxx_read_id(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_probe_switch(%struct.ar8xxx_priv*) #1

declare dso_local %struct.TYPE_9__* @devm_mdiobus_alloc(%struct.TYPE_10__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_10__*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @of_mdiobus_register(%struct.TYPE_9__*, %struct.device_node*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @register_switch(%struct.switch_dev*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ar8xxx_start(%struct.ar8xxx_priv*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_10__*, %struct.ar8xxx_priv*) #1

declare dso_local i32 @unregister_switch(%struct.switch_dev*) #1

declare dso_local i32 @ar8xxx_free(%struct.ar8xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
