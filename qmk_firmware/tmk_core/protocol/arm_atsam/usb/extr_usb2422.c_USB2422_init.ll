; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb2422.c_USB2422_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb2422.c_USB2422_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_71__ = type { %struct.TYPE_64__* }
%struct.TYPE_64__ = type { %struct.TYPE_53__ }
%struct.TYPE_53__ = type { i32, i64 }
%struct.TYPE_70__ = type { %struct.TYPE_76__, %struct.TYPE_74__ }
%struct.TYPE_76__ = type { %struct.TYPE_75__ }
%struct.TYPE_75__ = type { i32 }
%struct.TYPE_74__ = type { %struct.TYPE_73__ }
%struct.TYPE_73__ = type { i32 }
%struct.TYPE_68__ = type { %struct.TYPE_65__* }
%struct.TYPE_65__ = type { %struct.TYPE_63__*, %struct.TYPE_78__* }
%struct.TYPE_63__ = type { %struct.TYPE_62__ }
%struct.TYPE_62__ = type { i32, i32 }
%struct.TYPE_78__ = type { i32, %struct.TYPE_77__ }
%struct.TYPE_77__ = type { i32 }
%struct.TYPE_69__ = type { %struct.TYPE_49__, %struct.TYPE_47__, %struct.TYPE_45__, %struct.TYPE_43__ }
%struct.TYPE_49__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i64, i64, i64 }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_79__ }
%struct.TYPE_79__ = type { i32, i32, i32, i64 }
%struct.TYPE_67__ = type { %struct.TYPE_61__ }
%struct.TYPE_61__ = type { %struct.TYPE_60__, %struct.TYPE_58__, %struct.TYPE_56__, %struct.TYPE_54__, %struct.TYPE_51__ }
%struct.TYPE_60__ = type { %struct.TYPE_59__ }
%struct.TYPE_59__ = type { i32, i32 }
%struct.TYPE_58__ = type { %struct.TYPE_57__ }
%struct.TYPE_57__ = type { i64, i64 }
%struct.TYPE_56__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { i32, i32, i64 }
%struct.TYPE_54__ = type { %struct.TYPE_52__ }
%struct.TYPE_52__ = type { i64 }
%struct.TYPE_51__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i32, i32, i32 }
%struct.TYPE_72__ = type { %struct.TYPE_66__ }
%struct.TYPE_66__ = type { i32, i32 }

@GCLK = common dso_local global %struct.TYPE_71__* null, align 8
@MCLK = common dso_local global %struct.TYPE_70__* null, align 8
@PORT = common dso_local global %struct.TYPE_68__* null, align 8
@OSCCTRL = common dso_local global %struct.TYPE_69__* null, align 8
@USB = common dso_local global %struct.TYPE_67__* null, align 8
@DC_USB2422_INIT_BEGIN = common dso_local global i32 0, align 4
@ADC_5V = common dso_local global i32 0, align 4
@v_5v = common dso_local global i32 0, align 4
@ADC_5V_START_LEVEL = common dso_local global i32 0, align 4
@DC_USB2422_INIT_WAIT_5V_LOW = common dso_local global i32 0, align 4
@DC_USB2422_INIT_OSC_SYNC_DISABLING = common dso_local global i32 0, align 4
@DC_USB2422_INIT_OSC_SYNC_DFLLCTRLB_1 = common dso_local global i32 0, align 4
@DC_USB2422_INIT_OSC_SYNC_DFLLCTRLB_2 = common dso_local global i32 0, align 4
@DC_USB2422_INIT_OSC_SYNC_DFLLCTRLB_3 = common dso_local global i32 0, align 4
@DC_USB2422_INIT_OSC_SYNC_DFLLCTRLB_4 = common dso_local global i32 0, align 4
@DC_USB2422_INIT_OSC_SYNC_DFLLMUL = common dso_local global i32 0, align 4
@DC_USB2422_INIT_OSC_SYNC_ENABLING = common dso_local global i32 0, align 4
@DC_USB2422_INIT_USB_SYNC_SWRST = common dso_local global i32 0, align 4
@DC_USB2422_INIT_USB_WAIT_SWRST = common dso_local global i32 0, align 4
@USB_FUSES_TRANSN_ADDR = common dso_local global i32 0, align 4
@USB_FUSES_TRANSN_Pos = common dso_local global i32 0, align 4
@USB_FUSES_TRANSN_Msk = common dso_local global i32 0, align 4
@USB_FUSES_TRANSP_ADDR = common dso_local global i32 0, align 4
@USB_FUSES_TRANSP_Pos = common dso_local global i32 0, align 4
@USB_FUSES_TRANSP_Msk = common dso_local global i32 0, align 4
@USB_FUSES_TRIM_ADDR = common dso_local global i32 0, align 4
@USB_FUSES_TRIM_Pos = common dso_local global i32 0, align 4
@USB_FUSES_TRIM_Msk = common dso_local global i32 0, align 4
@DC_USB2422_INIT_USB_SYNC_ENABLING = common dso_local global i32 0, align 4
@USB2422_HUB_ACTIVE_GROUP = common dso_local global i64 0, align 8
@USB2422_HUB_ACTIVE_PIN = common dso_local global i64 0, align 8
@sr_exp_data = common dso_local global %struct.TYPE_72__ zeroinitializer, align 4
@usb_extra_manual = common dso_local global i64 0, align 8
@usb_gcr_auto = common dso_local global i32 0, align 4
@DC_USB2422_INIT_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @USB2422_init() #0 {
  %1 = alloca %struct.TYPE_71__*, align 8
  %2 = alloca %struct.TYPE_70__*, align 8
  %3 = alloca %struct.TYPE_68__*, align 8
  %4 = alloca %struct.TYPE_69__*, align 8
  %5 = alloca %struct.TYPE_67__*, align 8
  %6 = load %struct.TYPE_71__*, %struct.TYPE_71__** @GCLK, align 8
  store %struct.TYPE_71__* %6, %struct.TYPE_71__** %1, align 8
  %7 = load %struct.TYPE_70__*, %struct.TYPE_70__** @MCLK, align 8
  store %struct.TYPE_70__* %7, %struct.TYPE_70__** %2, align 8
  %8 = load %struct.TYPE_68__*, %struct.TYPE_68__** @PORT, align 8
  store %struct.TYPE_68__* %8, %struct.TYPE_68__** %3, align 8
  %9 = load %struct.TYPE_69__*, %struct.TYPE_69__** @OSCCTRL, align 8
  store %struct.TYPE_69__* %9, %struct.TYPE_69__** %4, align 8
  %10 = load %struct.TYPE_67__*, %struct.TYPE_67__** @USB, align 8
  store %struct.TYPE_67__* %10, %struct.TYPE_67__** %5, align 8
  %11 = load i32, i32* @DC_USB2422_INIT_BEGIN, align 4
  %12 = call i32 @DBGC(i32 %11)
  br label %13

13:                                               ; preds = %18, %0
  %14 = load i32, i32* @ADC_5V, align 4
  %15 = call i32 @adc_get(i32 %14)
  store i32 %15, i32* @v_5v, align 4
  %16 = load i32, i32* @ADC_5V_START_LEVEL, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @DC_USB2422_INIT_WAIT_5V_LOW, align 4
  %20 = call i32 @DBGC(i32 %19)
  br label %13

21:                                               ; preds = %13
  %22 = load %struct.TYPE_71__*, %struct.TYPE_71__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_64__*, %struct.TYPE_64__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %24, i64 10
  %26 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_71__*, %struct.TYPE_71__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_64__*, %struct.TYPE_64__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %30, i64 10
  %32 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.TYPE_70__*, %struct.TYPE_70__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.TYPE_70__*, %struct.TYPE_70__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.TYPE_68__*, %struct.TYPE_68__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_65__*, %struct.TYPE_65__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_78__*, %struct.TYPE_78__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %47, i64 12
  %49 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %48, i32 0, i32 0
  store i32 119, i32* %49, align 4
  %50 = load %struct.TYPE_68__*, %struct.TYPE_68__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_65__*, %struct.TYPE_65__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_63__*, %struct.TYPE_63__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %55, i64 24
  %57 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.TYPE_68__*, %struct.TYPE_68__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_65__*, %struct.TYPE_65__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_63__*, %struct.TYPE_63__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %64, i64 25
  %66 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.TYPE_68__*, %struct.TYPE_68__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_65__*, %struct.TYPE_65__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_78__*, %struct.TYPE_78__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %73, i64 11
  %75 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %75, i32 0, i32 0
  store i32 7, i32* %76, align 4
  %77 = load %struct.TYPE_68__*, %struct.TYPE_68__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_65__*, %struct.TYPE_65__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_63__*, %struct.TYPE_63__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %82, i64 22
  %84 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %97, %21
  %91 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @DC_USB2422_INIT_OSC_SYNC_DISABLING, align 4
  %99 = call i32 @DBGC(i32 %98)
  br label %90

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %108, %100
  %102 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @DC_USB2422_INIT_OSC_SYNC_DFLLCTRLB_1, align 4
  %110 = call i32 @DBGC(i32 %109)
  br label %101

111:                                              ; preds = %101
  %112 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %123, %111
  %117 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, i32* @DC_USB2422_INIT_OSC_SYNC_DFLLCTRLB_2, align 4
  %125 = call i32 @DBGC(i32 %124)
  br label %116

126:                                              ; preds = %116
  %127 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  br label %131

131:                                              ; preds = %138, %126
  %132 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @DC_USB2422_INIT_OSC_SYNC_DFLLCTRLB_3, align 4
  %140 = call i32 @DBGC(i32 %139)
  br label %131

141:                                              ; preds = %131
  %142 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %144, i32 0, i32 3
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %153, %141
  %147 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load i32, i32* @DC_USB2422_INIT_OSC_SYNC_DFLLCTRLB_4, align 4
  %155 = call i32 @DBGC(i32 %154)
  br label %146

156:                                              ; preds = %146
  %157 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %159, i32 0, i32 2
  store i32 1, i32* %160, align 8
  %161 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %163, i32 0, i32 0
  store i32 48000, i32* %164, align 4
  br label %165

165:                                              ; preds = %172, %156
  %166 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %165
  %173 = load i32, i32* @DC_USB2422_INIT_OSC_SYNC_DFLLMUL, align 4
  %174 = call i32 @DBGC(i32 %173)
  br label %165

175:                                              ; preds = %165
  %176 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  br label %180

180:                                              ; preds = %187, %175
  %181 = load %struct.TYPE_69__*, %struct.TYPE_69__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = load i32, i32* @DC_USB2422_INIT_OSC_SYNC_ENABLING, align 4
  %189 = call i32 @DBGC(i32 %188)
  br label %180

190:                                              ; preds = %180
  %191 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %194, i32 0, i32 0
  store i32 1, i32* %195, align 8
  br label %196

196:                                              ; preds = %204, %190
  %197 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = load i32, i32* @DC_USB2422_INIT_USB_SYNC_SWRST, align 4
  %206 = call i32 @DBGC(i32 %205)
  br label %196

207:                                              ; preds = %196
  br label %208

208:                                              ; preds = %216, %207
  %209 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %208
  %217 = load i32, i32* @DC_USB2422_INIT_USB_WAIT_SWRST, align 4
  %218 = call i32 @DBGC(i32 %217)
  br label %208

219:                                              ; preds = %208
  %220 = load i32, i32* @USB_FUSES_TRANSN_ADDR, align 4
  %221 = load i32, i32* @USB_FUSES_TRANSN_Pos, align 4
  %222 = ashr i32 %220, %221
  %223 = load i32, i32* @USB_FUSES_TRANSN_Msk, align 4
  %224 = and i32 %222, %223
  %225 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %228, i32 0, i32 0
  store i32 %224, i32* %229, align 8
  %230 = load i32, i32* @USB_FUSES_TRANSP_ADDR, align 4
  %231 = load i32, i32* @USB_FUSES_TRANSP_Pos, align 4
  %232 = ashr i32 %230, %231
  %233 = load i32, i32* @USB_FUSES_TRANSP_Msk, align 4
  %234 = and i32 %232, %233
  %235 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %238, i32 0, i32 1
  store i32 %234, i32* %239, align 4
  %240 = load i32, i32* @USB_FUSES_TRIM_ADDR, align 4
  %241 = load i32, i32* @USB_FUSES_TRIM_Pos, align 4
  %242 = ashr i32 %240, %241
  %243 = load i32, i32* @USB_FUSES_TRIM_Msk, align 4
  %244 = and i32 %242, %243
  %245 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %248, i32 0, i32 2
  store i32 %244, i32* %249, align 8
  %250 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %253, i32 0, i32 0
  store i64 0, i64* %254, align 8
  %255 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %258, i32 0, i32 2
  store i64 0, i64* %259, align 8
  %260 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %263, i32 0, i32 1
  store i32 1, i32* %264, align 4
  br label %265

265:                                              ; preds = %273, %219
  %266 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %265
  %274 = load i32, i32* @DC_USB2422_INIT_USB_SYNC_ENABLING, align 4
  %275 = call i32 @DBGC(i32 %274)
  br label %265

276:                                              ; preds = %265
  %277 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %280, i32 0, i32 0
  store i32 2, i32* %281, align 8
  %282 = load %struct.TYPE_67__*, %struct.TYPE_67__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %285, i32 0, i32 1
  store i32 2, i32* %286, align 4
  %287 = load %struct.TYPE_68__*, %struct.TYPE_68__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_65__*, %struct.TYPE_65__** %288, align 8
  %290 = load i64, i64* @USB2422_HUB_ACTIVE_GROUP, align 8
  %291 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_63__*, %struct.TYPE_63__** %292, align 8
  %294 = load i64, i64* @USB2422_HUB_ACTIVE_PIN, align 8
  %295 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %296, i32 0, i32 1
  store i32 1, i32* %297, align 4
  %298 = call i32 (...) @i2c0_init()
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_72__, %struct.TYPE_72__* @sr_exp_data, i32 0, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_72__, %struct.TYPE_72__* @sr_exp_data, i32 0, i32 0, i32 1), align 4
  %299 = call i32 (...) @SR_EXP_WriteData()
  %300 = call i32 @wait_us(i32 100)
  store i64 0, i64* @usb_extra_manual, align 8
  store i32 1, i32* @usb_gcr_auto, align 4
  %301 = load i32, i32* @DC_USB2422_INIT_COMPLETE, align 4
  %302 = call i32 @DBGC(i32 %301)
  ret void
}

declare dso_local i32 @DBGC(i32) #1

declare dso_local i32 @adc_get(i32) #1

declare dso_local i32 @i2c0_init(...) #1

declare dso_local i32 @SR_EXP_WriteData(...) #1

declare dso_local i32 @wait_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
