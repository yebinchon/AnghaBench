; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_cHRM.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_cHRM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"in png_handle_cHRM\0A\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing IHDR before cHRM\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid cHRM after IDAT\00", align 1
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Missing PLTE before cHRM\00", align 1
@PNG_INFO_cHRM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Duplicate cHRM chunk\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Incorrect cHRM chunk length\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Invalid cHRM white point\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Invalid cHRM red point\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Invalid cHRM green point\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Invalid cHRM blue point\00", align 1
@PNG_INFO_sRGB = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_cHRM(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = call i32 @png_error(%struct.TYPE_13__* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %53

28:                                               ; preds = %3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = call i32 @png_warning(%struct.TYPE_13__* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @png_crc_finish(%struct.TYPE_13__* %38, i32 %39)
  br label %191

41:                                               ; preds = %28
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = call i32 @png_warning(%struct.TYPE_13__* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %25
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = icmp ne %struct.TYPE_14__* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PNG_INFO_cHRM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = call i32 @png_warning(%struct.TYPE_13__* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @png_crc_finish(%struct.TYPE_13__* %66, i32 %67)
  br label %191

69:                                               ; preds = %56, %53
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 32
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = call i32 @png_warning(%struct.TYPE_13__* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @png_crc_finish(%struct.TYPE_13__* %75, i32 %76)
  br label %191

78:                                               ; preds = %69
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %81 = call i32 @png_crc_read(%struct.TYPE_13__* %79, i32* %80, i32 4)
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %83 = call i32 @png_get_uint_32(i32* %82)
  store i32 %83, i32* %16, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %86 = call i32 @png_crc_read(%struct.TYPE_13__* %84, i32* %85, i32 4)
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %88 = call i32 @png_get_uint_32(i32* %87)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp sgt i64 %90, 80000
  br i1 %91, label %102, label %92

92:                                               ; preds = %78
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp sgt i64 %94, 80000
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = icmp sgt i64 %100, 100000
  br i1 %101, label %102, label %107

102:                                              ; preds = %96, %92, %78
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = call i32 @png_warning(%struct.TYPE_13__* %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = call i64 @png_crc_finish(%struct.TYPE_13__* %105, i32 24)
  br label %191

107:                                              ; preds = %96
  %108 = load i32, i32* %16, align 4
  %109 = sitofp i32 %108 to float
  store float %109, float* %8, align 4
  %110 = load i32, i32* %17, align 4
  %111 = sitofp i32 %110 to float
  store float %111, float* %9, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %114 = call i32 @png_crc_read(%struct.TYPE_13__* %112, i32* %113, i32 4)
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %116 = call i32 @png_get_uint_32(i32* %115)
  store i32 %116, i32* %16, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %119 = call i32 @png_crc_read(%struct.TYPE_13__* %117, i32* %118, i32 4)
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %121 = call i32 @png_get_uint_32(i32* %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = icmp sgt i64 %125, 100000
  br i1 %126, label %127, label %132

127:                                              ; preds = %107
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = call i32 @png_warning(%struct.TYPE_13__* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %131 = call i64 @png_crc_finish(%struct.TYPE_13__* %130, i32 16)
  br label %191

132:                                              ; preds = %107
  %133 = load i32, i32* %16, align 4
  %134 = sitofp i32 %133 to float
  store float %134, float* %10, align 4
  %135 = load i32, i32* %17, align 4
  %136 = sitofp i32 %135 to float
  store float %136, float* %11, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %139 = call i32 @png_crc_read(%struct.TYPE_13__* %137, i32* %138, i32 4)
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %141 = call i32 @png_get_uint_32(i32* %140)
  store i32 %141, i32* %16, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %144 = call i32 @png_crc_read(%struct.TYPE_13__* %142, i32* %143, i32 4)
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %146 = call i32 @png_get_uint_32(i32* %145)
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = icmp sgt i64 %150, 100000
  br i1 %151, label %152, label %157

152:                                              ; preds = %132
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %154 = call i32 @png_warning(%struct.TYPE_13__* %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = call i64 @png_crc_finish(%struct.TYPE_13__* %155, i32 8)
  br label %191

157:                                              ; preds = %132
  %158 = load i32, i32* %16, align 4
  %159 = sitofp i32 %158 to float
  store float %159, float* %12, align 4
  %160 = load i32, i32* %17, align 4
  %161 = sitofp i32 %160 to float
  store float %161, float* %13, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %164 = call i32 @png_crc_read(%struct.TYPE_13__* %162, i32* %163, i32 4)
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %166 = call i32 @png_get_uint_32(i32* %165)
  store i32 %166, i32* %16, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %169 = call i32 @png_crc_read(%struct.TYPE_13__* %167, i32* %168, i32 4)
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %171 = call i32 @png_get_uint_32(i32* %170)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %17, align 4
  %174 = add nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = icmp sgt i64 %175, 100000
  br i1 %176, label %177, label %182

177:                                              ; preds = %157
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %179 = call i32 @png_warning(%struct.TYPE_13__* %178, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %181 = call i64 @png_crc_finish(%struct.TYPE_13__* %180, i32 0)
  br label %191

182:                                              ; preds = %157
  %183 = load i32, i32* %16, align 4
  %184 = sitofp i32 %183 to float
  store float %184, float* %14, align 4
  %185 = load i32, i32* %17, align 4
  %186 = sitofp i32 %185 to float
  store float %186, float* %15, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %188 = call i64 @png_crc_finish(%struct.TYPE_13__* %187, i32 0)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %35, %63, %72, %102, %127, %152, %177, %190, %182
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_error(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @png_warning(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @png_get_uint_32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
