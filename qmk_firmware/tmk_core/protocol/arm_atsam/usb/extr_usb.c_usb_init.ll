; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.c_usb_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.c_usb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_71__ = type { %struct.TYPE_56__* }
%struct.TYPE_56__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { i32, i64 }
%struct.TYPE_70__ = type { %struct.TYPE_78__, %struct.TYPE_76__ }
%struct.TYPE_78__ = type { %struct.TYPE_77__ }
%struct.TYPE_77__ = type { i32 }
%struct.TYPE_76__ = type { %struct.TYPE_75__ }
%struct.TYPE_75__ = type { i32 }
%struct.TYPE_68__ = type { %struct.TYPE_45__* }
%struct.TYPE_45__ = type { %struct.TYPE_44__*, %struct.TYPE_80__* }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_80__ = type { i32, %struct.TYPE_79__ }
%struct.TYPE_79__ = type { i32 }
%struct.TYPE_69__ = type { %struct.TYPE_54__, %struct.TYPE_51__, %struct.TYPE_49__, %struct.TYPE_47__ }
%struct.TYPE_54__ = type { %struct.TYPE_52__ }
%struct.TYPE_52__ = type { i64, i64, i64 }
%struct.TYPE_51__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_49__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i32 }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32, i32, i32, i64 }
%struct.usb_module = type { i64, i64*, i64*, i64, i64, i32***, i32**, %struct.TYPE_67__, %struct.usb_module*, i32, i32 }
%struct.TYPE_67__ = type { %struct.TYPE_74__, %struct.TYPE_53__, %struct.TYPE_58__, %struct.TYPE_66__, %struct.TYPE_60__ }
%struct.TYPE_74__ = type { %struct.TYPE_64__ }
%struct.TYPE_64__ = type { i32 }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_58__ = type { %struct.TYPE_57__ }
%struct.TYPE_57__ = type { i32, i32, i32 }
%struct.TYPE_66__ = type { %struct.TYPE_65__ }
%struct.TYPE_65__ = type { i32, i32, i32 }
%struct.TYPE_60__ = type { %struct.TYPE_59__ }
%struct.TYPE_59__ = type { i64 }
%struct.TYPE_73__ = type { %struct.TYPE_63__ }
%struct.TYPE_63__ = type { %struct.TYPE_62__ }
%struct.TYPE_62__ = type { %struct.TYPE_61__ }
%struct.TYPE_61__ = type { i32, i32 }
%struct.TYPE_72__ = type { i32* }
%struct.usb_config = type { i64, i64*, i64*, i64, i64, i32***, i32**, %struct.TYPE_67__, %struct.usb_config*, i32, i32 }

@GCLK = common dso_local global %struct.TYPE_71__* null, align 8
@MCLK = common dso_local global %struct.TYPE_70__* null, align 8
@PORT = common dso_local global %struct.TYPE_68__* null, align 8
@OSCCTRL = common dso_local global %struct.TYPE_69__* null, align 8
@_usb_instances = common dso_local global %struct.usb_module* null, align 8
@GCLK_USB = common dso_local global i64 0, align 8
@USB = common dso_local global %struct.TYPE_73__* null, align 8
@USB_FUSES_TRANSN_ADDR = common dso_local global i32 0, align 4
@USB_FUSES_TRANSN_Pos = common dso_local global i32 0, align 4
@USB_FUSES_TRANSN_Msk = common dso_local global i32 0, align 4
@USB_FUSES_TRANSP_ADDR = common dso_local global i32 0, align 4
@USB_FUSES_TRANSP_Pos = common dso_local global i32 0, align 4
@USB_FUSES_TRANSP_Msk = common dso_local global i32 0, align 4
@USB_FUSES_TRIM_ADDR = common dso_local global i32 0, align 4
@USB_FUSES_TRIM_Pos = common dso_local global i32 0, align 4
@USB_FUSES_TRIM_Msk = common dso_local global i32 0, align 4
@usb_descriptor_table = common dso_local global %struct.TYPE_72__ zeroinitializer, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@USB_DEVICE_CTRLB_SPDCONF_FS_Val = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@USB_DEVICE_CTRLB_SPDCONF_LS_Val = common dso_local global i32 0, align 4
@USB_DEVICE_CALLBACK_N = common dso_local global i32 0, align 4
@USB_EPT_NUM = common dso_local global i32 0, align 4
@USB_DEVICE_EP_CALLBACK_N = common dso_local global i32 0, align 4
@USB_0_IRQn = common dso_local global i32 0, align 4
@USB_2_IRQn = common dso_local global i32 0, align 4
@USB_3_IRQn = common dso_local global i32 0, align 4
@STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_init(%struct.usb_module* %0, %struct.usb_module* %1, %struct.usb_config* %2) #0 {
  %4 = alloca %struct.usb_module*, align 8
  %5 = alloca %struct.usb_module*, align 8
  %6 = alloca %struct.usb_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_71__*, align 8
  %13 = alloca %struct.TYPE_70__*, align 8
  %14 = alloca %struct.TYPE_68__*, align 8
  %15 = alloca %struct.TYPE_69__*, align 8
  store %struct.usb_module* %0, %struct.usb_module** %4, align 8
  store %struct.usb_module* %1, %struct.usb_module** %5, align 8
  store %struct.usb_config* %2, %struct.usb_config** %6, align 8
  %16 = load %struct.usb_module*, %struct.usb_module** %5, align 8
  %17 = call i32 @Assert(%struct.usb_module* %16)
  %18 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %19 = call i32 @Assert(%struct.usb_module* %18)
  %20 = load %struct.usb_config*, %struct.usb_config** %6, align 8
  %21 = bitcast %struct.usb_config* %20 to %struct.usb_module*
  %22 = call i32 @Assert(%struct.usb_module* %21)
  %23 = load %struct.TYPE_71__*, %struct.TYPE_71__** @GCLK, align 8
  store %struct.TYPE_71__* %23, %struct.TYPE_71__** %12, align 8
  %24 = load %struct.TYPE_70__*, %struct.TYPE_70__** @MCLK, align 8
  store %struct.TYPE_70__* %24, %struct.TYPE_70__** %13, align 8
  %25 = load %struct.TYPE_68__*, %struct.TYPE_68__** @PORT, align 8
  store %struct.TYPE_68__* %25, %struct.TYPE_68__** %14, align 8
  %26 = load %struct.TYPE_69__*, %struct.TYPE_69__** @OSCCTRL, align 8
  store %struct.TYPE_69__* %26, %struct.TYPE_69__** %15, align 8
  %27 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  store %struct.usb_module* %27, %struct.usb_module** @_usb_instances, align 8
  %28 = load %struct.usb_module*, %struct.usb_module** %5, align 8
  %29 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %30 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %29, i32 0, i32 8
  store %struct.usb_module* %28, %struct.usb_module** %30, align 8
  %31 = load %struct.TYPE_70__*, %struct.TYPE_70__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.TYPE_70__*, %struct.TYPE_70__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.TYPE_68__*, %struct.TYPE_68__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_45__*, %struct.TYPE_45__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_80__*, %struct.TYPE_80__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %44, i64 12
  %46 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %45, i32 0, i32 0
  store i32 119, i32* %46, align 4
  %47 = load %struct.TYPE_68__*, %struct.TYPE_68__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_45__*, %struct.TYPE_45__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_44__*, %struct.TYPE_44__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %52, i64 24
  %54 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.TYPE_68__*, %struct.TYPE_68__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_45__*, %struct.TYPE_45__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_44__*, %struct.TYPE_44__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i64 25
  %63 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load %struct.TYPE_68__*, %struct.TYPE_68__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_45__*, %struct.TYPE_45__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_80__*, %struct.TYPE_80__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %70, i64 11
  %72 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %72, i32 0, i32 0
  store i32 7, i32* %73, align 4
  %74 = load %struct.TYPE_68__*, %struct.TYPE_68__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_45__*, %struct.TYPE_45__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_44__*, %struct.TYPE_44__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %79, i64 22
  %81 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  %83 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %94, %3
  %88 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %87

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %103, %95
  %97 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %96

104:                                              ; preds = %96
  %105 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %116, %104
  %110 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %109

117:                                              ; preds = %109
  %118 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %129, %117
  %123 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %122

130:                                              ; preds = %122
  %131 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %133, i32 0, i32 3
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %142, %130
  %136 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %135

143:                                              ; preds = %135
  %144 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %146, i32 0, i32 2
  store i32 1, i32* %147, align 8
  %148 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %150, i32 0, i32 0
  store i32 48000, i32* %151, align 4
  br label %152

152:                                              ; preds = %159, %143
  %153 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %152

160:                                              ; preds = %152
  %161 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  br label %165

165:                                              ; preds = %172, %160
  %166 = load %struct.TYPE_69__*, %struct.TYPE_69__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %165

173:                                              ; preds = %165
  %174 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_56__*, %struct.TYPE_56__** %175, align 8
  %177 = load i64, i64* @GCLK_USB, align 8
  %178 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %179, i32 0, i32 1
  store i64 0, i64* %180, align 8
  %181 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_56__*, %struct.TYPE_56__** %182, align 8
  %184 = load i64, i64* @GCLK_USB, align 8
  %185 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load %struct.usb_module*, %struct.usb_module** %5, align 8
  %189 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %191, i32 0, i32 0
  store i32 1, i32* %192, align 8
  br label %193

193:                                              ; preds = %201, %173
  %194 = load %struct.usb_module*, %struct.usb_module** %5, align 8
  %195 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %193

202:                                              ; preds = %193
  %203 = load %struct.TYPE_73__*, %struct.TYPE_73__** @USB, align 8
  %204 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %206, i32 0, i32 0
  store i32 2, i32* %207, align 4
  %208 = load %struct.TYPE_73__*, %struct.TYPE_73__** @USB, align 8
  %209 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %211, i32 0, i32 1
  store i32 2, i32* %212, align 4
  %213 = load i32, i32* @USB_FUSES_TRANSN_ADDR, align 4
  %214 = load i32, i32* @USB_FUSES_TRANSN_Pos, align 4
  %215 = ashr i32 %213, %214
  %216 = load i32, i32* @USB_FUSES_TRANSN_Msk, align 4
  %217 = and i32 %215, %216
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp eq i32 %218, 31
  br i1 %219, label %220, label %221

220:                                              ; preds = %202
  store i32 5, i32* %9, align 4
  br label %221

221:                                              ; preds = %220, %202
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.usb_module*, %struct.usb_module** %5, align 8
  %224 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %223, i32 0, i32 7
  %225 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %226, i32 0, i32 0
  store i32 %222, i32* %227, align 4
  %228 = load i32, i32* @USB_FUSES_TRANSP_ADDR, align 4
  %229 = load i32, i32* @USB_FUSES_TRANSP_Pos, align 4
  %230 = ashr i32 %228, %229
  %231 = load i32, i32* @USB_FUSES_TRANSP_Msk, align 4
  %232 = and i32 %230, %231
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp eq i32 %233, 31
  br i1 %234, label %235, label %236

235:                                              ; preds = %221
  store i32 29, i32* %10, align 4
  br label %236

236:                                              ; preds = %235, %221
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.usb_module*, %struct.usb_module** %5, align 8
  %239 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %238, i32 0, i32 7
  %240 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %241, i32 0, i32 1
  store i32 %237, i32* %242, align 4
  %243 = load i32, i32* @USB_FUSES_TRIM_ADDR, align 4
  %244 = load i32, i32* @USB_FUSES_TRIM_Pos, align 4
  %245 = ashr i32 %243, %244
  %246 = load i32, i32* @USB_FUSES_TRIM_Msk, align 4
  %247 = and i32 %245, %246
  store i32 %247, i32* %11, align 4
  %248 = load i32, i32* %11, align 4
  %249 = icmp eq i32 %248, 7
  br i1 %249, label %250, label %251

250:                                              ; preds = %236
  store i32 3, i32* %11, align 4
  br label %251

251:                                              ; preds = %250, %236
  %252 = load i32, i32* %11, align 4
  %253 = load %struct.usb_module*, %struct.usb_module** %5, align 8
  %254 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %253, i32 0, i32 7
  %255 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %256, i32 0, i32 2
  store i32 %252, i32* %257, align 4
  %258 = load %struct.usb_config*, %struct.usb_config** %6, align 8
  %259 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %258, i32 0, i32 10
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.usb_module*, %struct.usb_module** %5, align 8
  %262 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %261, i32 0, i32 7
  %263 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %264, i32 0, i32 2
  store i32 %260, i32* %265, align 8
  %266 = load %struct.usb_config*, %struct.usb_config** %6, align 8
  %267 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %266, i32 0, i32 9
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.usb_module*, %struct.usb_module** %5, align 8
  %270 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %269, i32 0, i32 7
  %271 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %272, i32 0, i32 1
  store i32 %268, i32* %273, align 4
  %274 = load i32*, i32** getelementptr inbounds (%struct.TYPE_72__, %struct.TYPE_72__* @usb_descriptor_table, i32 0, i32 0), align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = ptrtoint i32* %275 to i32
  %277 = load %struct.usb_module*, %struct.usb_module** %5, align 8
  %278 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %277, i32 0, i32 7
  %279 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %279, i32 0, i32 0
  store i32 %276, i32* %280, align 4
  %281 = load i64, i64* @USB_SPEED_FULL, align 8
  %282 = load %struct.usb_config*, %struct.usb_config** %6, align 8
  %283 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp eq i64 %281, %284
  br i1 %285, label %286, label %295

286:                                              ; preds = %251
  %287 = load i32, i32* @USB_DEVICE_CTRLB_SPDCONF_FS_Val, align 4
  %288 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %289 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %288, i32 0, i32 8
  %290 = load %struct.usb_module*, %struct.usb_module** %289, align 8
  %291 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %290, i32 0, i32 7
  %292 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %293, i32 0, i32 0
  store i32 %287, i32* %294, align 8
  br label %311

295:                                              ; preds = %251
  %296 = load i64, i64* @USB_SPEED_LOW, align 8
  %297 = load %struct.usb_config*, %struct.usb_config** %6, align 8
  %298 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp eq i64 %296, %299
  br i1 %300, label %301, label %310

301:                                              ; preds = %295
  %302 = load i32, i32* @USB_DEVICE_CTRLB_SPDCONF_LS_Val, align 4
  %303 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %304 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %303, i32 0, i32 8
  %305 = load %struct.usb_module*, %struct.usb_module** %304, align 8
  %306 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %305, i32 0, i32 7
  %307 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %308, i32 0, i32 0
  store i32 %302, i32* %309, align 8
  br label %310

310:                                              ; preds = %301, %295
  br label %311

311:                                              ; preds = %310, %286
  %312 = load i32*, i32** getelementptr inbounds (%struct.TYPE_72__, %struct.TYPE_72__* @usb_descriptor_table, i32 0, i32 0), align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 0
  %314 = call i32 @memset(i32* %313, i32 0, i32 8)
  store i32 0, i32* %7, align 4
  br label %315

315:                                              ; preds = %326, %311
  %316 = load i32, i32* %7, align 4
  %317 = load i32, i32* @USB_DEVICE_CALLBACK_N, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %329

319:                                              ; preds = %315
  %320 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %321 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %320, i32 0, i32 6
  %322 = load i32**, i32*** %321, align 8
  %323 = load i32, i32* %7, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32*, i32** %322, i64 %324
  store i32* null, i32** %325, align 8
  br label %326

326:                                              ; preds = %319
  %327 = load i32, i32* %7, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %7, align 4
  br label %315

329:                                              ; preds = %315
  store i32 0, i32* %7, align 4
  br label %330

330:                                              ; preds = %354, %329
  %331 = load i32, i32* %7, align 4
  %332 = load i32, i32* @USB_EPT_NUM, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %357

334:                                              ; preds = %330
  store i32 0, i32* %8, align 4
  br label %335

335:                                              ; preds = %350, %334
  %336 = load i32, i32* %8, align 4
  %337 = load i32, i32* @USB_DEVICE_EP_CALLBACK_N, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %353

339:                                              ; preds = %335
  %340 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %341 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %340, i32 0, i32 5
  %342 = load i32***, i32**** %341, align 8
  %343 = load i32, i32* %7, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32**, i32*** %342, i64 %344
  %346 = load i32**, i32*** %345, align 8
  %347 = load i32, i32* %8, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32*, i32** %346, i64 %348
  store i32* null, i32** %349, align 8
  br label %350

350:                                              ; preds = %339
  %351 = load i32, i32* %8, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %8, align 4
  br label %335

353:                                              ; preds = %335
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %7, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %7, align 4
  br label %330

357:                                              ; preds = %330
  %358 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %359 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %358, i32 0, i32 4
  store i64 0, i64* %359, align 8
  %360 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %361 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %360, i32 0, i32 3
  store i64 0, i64* %361, align 8
  store i32 0, i32* %8, align 4
  br label %362

362:                                              ; preds = %379, %357
  %363 = load i32, i32* %8, align 4
  %364 = load i32, i32* @USB_EPT_NUM, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %382

366:                                              ; preds = %362
  %367 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %368 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %367, i32 0, i32 2
  %369 = load i64*, i64** %368, align 8
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i64, i64* %369, i64 %371
  store i64 0, i64* %372, align 8
  %373 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %374 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %373, i32 0, i32 1
  %375 = load i64*, i64** %374, align 8
  %376 = load i32, i32* %8, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i64, i64* %375, i64 %377
  store i64 0, i64* %378, align 8
  br label %379

379:                                              ; preds = %366
  %380 = load i32, i32* %8, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %8, align 4
  br label %362

382:                                              ; preds = %362
  %383 = load i32, i32* @USB_0_IRQn, align 4
  %384 = call i32 @NVIC_EnableIRQ(i32 %383)
  %385 = load i32, i32* @USB_2_IRQn, align 4
  %386 = call i32 @NVIC_EnableIRQ(i32 %385)
  %387 = load i32, i32* @USB_3_IRQn, align 4
  %388 = call i32 @NVIC_EnableIRQ(i32 %387)
  %389 = load i32, i32* @STATUS_OK, align 4
  ret i32 %389
}

declare dso_local i32 @Assert(%struct.usb_module*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @NVIC_EnableIRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
