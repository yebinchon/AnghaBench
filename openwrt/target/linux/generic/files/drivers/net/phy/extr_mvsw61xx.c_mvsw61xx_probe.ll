; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mvsw61xx_state = type { i32, i32, i32, %struct.TYPE_8__, i8*, i64, i8*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i8*, i32, i32*, i32, i8*, i32 }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mii-bus\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't get MII bus handle\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Couldn't find MII bus from handle\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"is-indirect\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Switch address not specified\0A\00", align 1
@MV_BASE = common dso_local global i8* null, align 8
@IDENT = common dso_local global i32 0, align 4
@MV_IDENT_MASK = common dso_local global i32 0, align 4
@MV_IDENT_STR_6171 = common dso_local global i8* null, align 8
@MV_IDENT_STR_6172 = common dso_local global i8* null, align 8
@MV_IDENT_STR_6176 = common dso_local global i8* null, align 8
@MV_IDENT_STR_6352 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"No compatible switch found at 0x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Found %s at %s:%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Using %sdirect addressing\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"cpu-port-0\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"CPU port not set\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"cpu-port-1\00", align 1
@MV_VLANS = common dso_local global i32 0, align 4
@MV_PORTS = common dso_local global i32 0, align 4
@mvsw61xx_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvsw61xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvsw61xx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mvsw61xx_state*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mvsw61xx_state* @kzalloc(i32 96, i32 %14)
  store %struct.mvsw61xx_state* %15, %struct.mvsw61xx_state** %4, align 8
  %16 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %17 = icmp ne %struct.mvsw61xx_state* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %204

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %23, %struct.device_node** %6, align 8
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %200

32:                                               ; preds = %21
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = call %struct.TYPE_9__* @of_mdio_find_bus(%struct.device_node* %33)
  %35 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %36 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %35, i32 0, i32 7
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %36, align 8
  %37 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %38 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %37, i32 0, i32 7
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %200

47:                                               ; preds = %32
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = call i64 @of_property_read_bool(%struct.device_node* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %51 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %50, i32 0, i32 5
  store i64 %49, i64* %51, align 8
  %52 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %53 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %47
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = call i64 @of_property_read_u32(%struct.device_node* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %200

66:                                               ; preds = %56
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %69 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  br label %74

70:                                               ; preds = %47
  %71 = load i8*, i8** @MV_BASE, align 8
  %72 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %73 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %76 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %75, i32 0, i32 7
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %79 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %82 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %81, i32 0, i32 6
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* @IDENT, align 4
  %85 = call i32 @MV_PORTREG(i32 %84, i32 0)
  %86 = call i32 @r16(%struct.TYPE_9__* %77, i64 %80, i8* %83, i32 %85)
  %87 = load i32, i32* @MV_IDENT_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %90 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %92 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %102 [
    i32 131, label %94
    i32 130, label %96
    i32 129, label %98
    i32 128, label %100
  ]

94:                                               ; preds = %74
  %95 = load i8*, i8** @MV_IDENT_STR_6171, align 8
  store i8* %95, i8** %7, align 8
  br label %111

96:                                               ; preds = %74
  %97 = load i8*, i8** @MV_IDENT_STR_6172, align 8
  store i8* %97, i8** %7, align 8
  br label %111

98:                                               ; preds = %74
  %99 = load i8*, i8** @MV_IDENT_STR_6176, align 8
  store i8* %99, i8** %7, align 8
  br label %111

100:                                              ; preds = %74
  %101 = load i8*, i8** @MV_IDENT_STR_6352, align 8
  store i8* %101, i8** %7, align 8
  br label %111

102:                                              ; preds = %74
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %106 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %105, i32 0, i32 6
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %9, align 4
  br label %200

111:                                              ; preds = %100, %98, %96, %94
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %114 = call i32 @platform_set_drvdata(%struct.platform_device* %112, %struct.mvsw61xx_state* %113)
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i8*, i8** %7, align 8
  %118 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %119 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %118, i32 0, i32 7
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %124 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %123, i32 0, i32 6
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @dev_info(%struct.TYPE_10__* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %117, i32 %122, i8* %125)
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %130 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %135 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @dev_info(%struct.TYPE_10__* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %134)
  %136 = load %struct.device_node*, %struct.device_node** %5, align 8
  %137 = call i64 @of_property_read_u32(%struct.device_node* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %8)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %111
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %9, align 4
  br label %200

145:                                              ; preds = %111
  %146 = load i8*, i8** %8, align 8
  %147 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %148 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  %149 = load %struct.device_node*, %struct.device_node** %5, align 8
  %150 = call i64 @of_property_read_u32(%struct.device_node* %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8** %8)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %145
  %153 = load i8*, i8** %8, align 8
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %156 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  br label %160

157:                                              ; preds = %145
  %158 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %159 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %158, i32 0, i32 1
  store i32 -1, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i32, i32* @MV_VLANS, align 4
  %162 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %163 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 5
  store i32 %161, i32* %164, align 8
  %165 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %166 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %165, i32 0, i32 4
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %169 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 4
  store i8* %167, i8** %170, align 8
  %171 = load i32, i32* @MV_PORTS, align 4
  %172 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %173 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 3
  store i32 %171, i32* %174, align 8
  %175 = load i8*, i8** %7, align 8
  %176 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %177 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i8* %175, i8** %178, align 8
  %179 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %180 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  store i32* @mvsw61xx_ops, i32** %181, align 8
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = call i32 @dev_name(%struct.TYPE_10__* %183)
  %185 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %186 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  store i32 %184, i32* %187, align 8
  %188 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %189 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %188, i32 0, i32 3
  %190 = call i32 @_mvsw61xx_reset(%struct.TYPE_8__* %189, i32 1)
  %191 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %192 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %191, i32 0, i32 3
  %193 = call i32 @register_switch(%struct.TYPE_8__* %192, i32* null)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %160
  br label %200

197:                                              ; preds = %160
  %198 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %199 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %198, i32 0, i32 2
  store i32 1, i32* %199, align 8
  store i32 0, i32* %2, align 4
  br label %204

200:                                              ; preds = %196, %139, %102, %60, %41, %26
  %201 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %202 = call i32 @kfree(%struct.mvsw61xx_state* %201)
  %203 = load i32, i32* %9, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %200, %197, %18
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.mvsw61xx_state* @kzalloc(i32, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @of_mdio_find_bus(%struct.device_node*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @r16(%struct.TYPE_9__*, i64, i8*, i32) #1

declare dso_local i32 @MV_PORTREG(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mvsw61xx_state*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i8*, ...) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @_mvsw61xx_reset(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @register_switch(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @kfree(%struct.mvsw61xx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
