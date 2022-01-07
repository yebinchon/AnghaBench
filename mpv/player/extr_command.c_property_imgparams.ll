; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_property_imgparams.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_property_imgparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image_params = type { i32, i32, double, i32, i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { double, i32, i32, i32, i32, i32 }
%struct.mp_imgfmt_desc = type { i32, i32*, i32*, i32*, i32, i32 }
%struct.m_sub_property = type { i8*, i32, i32 }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pixelformat\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"average-bpp\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"plane-depth\00", align 1
@MP_IMGFLAG_YUV_P = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"dw\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"dh\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"aspect\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"par\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1
@mp_csp_names = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"colorlevels\00", align 1
@mp_csp_levels_names = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"primaries\00", align 1
@mp_csp_prim_names = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@mp_csp_trc_names = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"sig-peak\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@mp_csp_light_names = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"chroma-location\00", align 1
@mp_chroma_names = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"stereo-in\00", align 1
@mp_stereo3d_names = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_image_params*, i32, i8*)* @property_imgparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_imgparams(%struct.mp_image_params* byval(%struct.mp_image_params) align 8 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_imgfmt_desc, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [19 x %struct.m_sub_property], align 16
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %17, i32* %4, align 4
  br label %219

18:                                               ; preds = %3
  %19 = call i32 @mp_image_params_get_dsize(%struct.mp_image_params* %0, i32* %7, i32* %8)
  %20 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  call void @mp_imgfmt_get_desc(%struct.mp_imgfmt_desc* sret %9, i32 %21)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %50, %18
  %23 = load i32, i32* %11, align 4
  %24 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %9, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %9, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %9, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %39, %45
  %47 = ashr i32 %33, %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %27
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %22

53:                                               ; preds = %22
  %54 = getelementptr inbounds [19 x %struct.m_sub_property], [19 x %struct.m_sub_property]* %12, i64 0, i64 0
  %55 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %55, align 16
  %56 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %54, i32 0, i32 1
  %57 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mp_imgfmt_to_name(i32 %58)
  %60 = call i32 @SUB_PROP_STR(i32 %59)
  store i32 %60, i32* %56, align 8
  %61 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %54, i32 0, i32 2
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %54, i64 1
  %63 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %63, align 16
  %64 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %62, i32 0, i32 1
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %64, align 8
  %69 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %62, i32 0, i32 2
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %62, i64 1
  %71 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %71, align 16
  %72 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %70, i32 0, i32 1
  %73 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %9, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MP_IMGFLAG_YUV_P, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %72, align 8
  %80 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %70, i32 0, i32 2
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %70, i64 1
  %82 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %82, align 16
  %83 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %81, i32 0, i32 1
  %84 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @SUB_PROP_INT(i32 %85)
  store i32 %86, i32* %83, align 8
  %87 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %81, i32 0, i32 2
  store i32 0, i32* %87, align 4
  %88 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %81, i64 1
  %89 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %88, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %89, align 16
  %90 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %88, i32 0, i32 1
  %91 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @SUB_PROP_INT(i32 %92)
  store i32 %93, i32* %90, align 8
  %94 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %88, i32 0, i32 2
  store i32 0, i32* %94, align 4
  %95 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %88, i64 1
  %96 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %95, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %96, align 16
  %97 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %95, i32 0, i32 1
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @SUB_PROP_INT(i32 %98)
  store i32 %99, i32* %97, align 8
  %100 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %95, i32 0, i32 2
  store i32 0, i32* %100, align 4
  %101 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %95, i64 1
  %102 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %102, align 16
  %103 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %101, i32 0, i32 1
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @SUB_PROP_INT(i32 %104)
  store i32 %105, i32* %103, align 8
  %106 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %101, i32 0, i32 2
  store i32 0, i32* %106, align 4
  %107 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %101, i64 1
  %108 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %108, align 16
  %109 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %107, i32 0, i32 1
  %110 = load i32, i32* %7, align 4
  %111 = sitofp i32 %110 to double
  %112 = load i32, i32* %8, align 4
  %113 = sitofp i32 %112 to double
  %114 = fdiv double %111, %113
  %115 = call i32 @SUB_PROP_FLOAT(double %114)
  store i32 %115, i32* %109, align 8
  %116 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %107, i32 0, i32 2
  store i32 0, i32* %116, align 4
  %117 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %107, i64 1
  %118 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %117, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %118, align 16
  %119 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %117, i32 0, i32 1
  %120 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 2
  %121 = load double, double* %120, align 8
  %122 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = sitofp i64 %123 to double
  %125 = fdiv double %121, %124
  %126 = call i32 @SUB_PROP_FLOAT(double %125)
  store i32 %126, i32* %119, align 8
  %127 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %117, i32 0, i32 2
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %117, i64 1
  %129 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %128, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %129, align 16
  %130 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %128, i32 0, i32 1
  %131 = load i32, i32* @mp_csp_names, align 4
  %132 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @m_opt_choice_str(i32 %131, i32 %134)
  %136 = call i32 @SUB_PROP_STR(i32 %135)
  store i32 %136, i32* %130, align 8
  %137 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %128, i32 0, i32 2
  store i32 0, i32* %137, align 4
  %138 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %128, i64 1
  %139 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %138, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %139, align 16
  %140 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %138, i32 0, i32 1
  %141 = load i32, i32* @mp_csp_levels_names, align 4
  %142 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @m_opt_choice_str(i32 %141, i32 %144)
  %146 = call i32 @SUB_PROP_STR(i32 %145)
  store i32 %146, i32* %140, align 8
  %147 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %138, i32 0, i32 2
  store i32 0, i32* %147, align 4
  %148 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %138, i64 1
  %149 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %148, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %149, align 16
  %150 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %148, i32 0, i32 1
  %151 = load i32, i32* @mp_csp_prim_names, align 4
  %152 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @m_opt_choice_str(i32 %151, i32 %154)
  %156 = call i32 @SUB_PROP_STR(i32 %155)
  store i32 %156, i32* %150, align 8
  %157 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %148, i32 0, i32 2
  store i32 0, i32* %157, align 4
  %158 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %148, i64 1
  %159 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %158, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %159, align 16
  %160 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %158, i32 0, i32 1
  %161 = load i32, i32* @mp_csp_trc_names, align 4
  %162 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @m_opt_choice_str(i32 %161, i32 %164)
  %166 = call i32 @SUB_PROP_STR(i32 %165)
  store i32 %166, i32* %160, align 8
  %167 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %158, i32 0, i32 2
  store i32 0, i32* %167, align 4
  %168 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %158, i64 1
  %169 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %168, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8** %169, align 16
  %170 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %168, i32 0, i32 1
  %171 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load double, double* %172, align 8
  %174 = call i32 @SUB_PROP_FLOAT(double %173)
  store i32 %174, i32* %170, align 8
  %175 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %168, i32 0, i32 2
  store i32 0, i32* %175, align 4
  %176 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %168, i64 1
  %177 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %176, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %177, align 16
  %178 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %176, i32 0, i32 1
  %179 = load i32, i32* @mp_csp_light_names, align 4
  %180 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @m_opt_choice_str(i32 %179, i32 %182)
  %184 = call i32 @SUB_PROP_STR(i32 %183)
  store i32 %184, i32* %178, align 8
  %185 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %176, i32 0, i32 2
  store i32 0, i32* %185, align 4
  %186 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %176, i64 1
  %187 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %186, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8** %187, align 16
  %188 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %186, i32 0, i32 1
  %189 = load i32, i32* @mp_chroma_names, align 4
  %190 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @m_opt_choice_str(i32 %189, i32 %191)
  %193 = call i32 @SUB_PROP_STR(i32 %192)
  store i32 %193, i32* %188, align 8
  %194 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %186, i32 0, i32 2
  store i32 0, i32* %194, align 4
  %195 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %186, i64 1
  %196 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %195, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %196, align 16
  %197 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %195, i32 0, i32 1
  %198 = load i32, i32* @mp_stereo3d_names, align 4
  %199 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @m_opt_choice_str(i32 %198, i32 %200)
  %202 = call i32 @SUB_PROP_STR(i32 %201)
  store i32 %202, i32* %197, align 8
  %203 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %195, i32 0, i32 2
  store i32 0, i32* %203, align 4
  %204 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %195, i64 1
  %205 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %204, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %205, align 16
  %206 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %204, i32 0, i32 1
  %207 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %0, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @SUB_PROP_INT(i32 %208)
  store i32 %209, i32* %206, align 8
  %210 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %204, i32 0, i32 2
  store i32 0, i32* %210, align 4
  %211 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %204, i64 1
  %212 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %211, i32 0, i32 0
  store i8* null, i8** %212, align 16
  %213 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %211, i32 0, i32 1
  store i32 0, i32* %213, align 8
  %214 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %211, i32 0, i32 2
  store i32 0, i32* %214, align 4
  %215 = getelementptr inbounds [19 x %struct.m_sub_property], [19 x %struct.m_sub_property]* %12, i64 0, i64 0
  %216 = load i32, i32* %5, align 4
  %217 = load i8*, i8** %6, align 8
  %218 = call i32 @m_property_read_sub(%struct.m_sub_property* %215, i32 %216, i8* %217)
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %53, %16
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @mp_image_params_get_dsize(%struct.mp_image_params*, i32*, i32*) #1

declare dso_local void @mp_imgfmt_get_desc(%struct.mp_imgfmt_desc* sret, i32) #1

declare dso_local i32 @SUB_PROP_STR(i32) #1

declare dso_local i32 @mp_imgfmt_to_name(i32) #1

declare dso_local i32 @SUB_PROP_INT(i32) #1

declare dso_local i32 @SUB_PROP_FLOAT(double) #1

declare dso_local i32 @m_opt_choice_str(i32, i32) #1

declare dso_local i32 @m_property_read_sub(%struct.m_sub_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
